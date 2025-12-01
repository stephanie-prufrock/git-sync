########## Project Definition ########## {
variable "project" {
    description = <<-EOF
        description: Project name or service name
        type: string
        required: yes
    EOF
    type = string
}

variable "stage" {
    description = <<-EOF
        description: Service stage of project
        type: string
        required: no
        example:'''
            stage = "dev" # stg, prd
        '''
    EOF
    type = string
}

variable "region_code" {
    description = <<-EOF
        description: Country code for region
        type: string
        required: no
        default: kr
        example:'''
            region_code = "kr"
        '''
    EOF
    type    = string
    default = "kr"
}

variable "region" {
    description = <<-EOF
        description: Region name
        type: string
        required: no
        default: KR-WEST1
        example:'''
            region = "kr-west1"
        '''
    EOF
    type    = string
    default = "kr-west1"
}
########## Project Definition ########## }

########## Direct Connect Definition  ########## {
variable "name" {
    description = <<-EOF
        description: DirectConnect name. (3 to 20 characters without specials)
        type: string
        required: yes
        input_validate_rule: ^[a-zA-Z0-9]{3,20}$
        input_validate_mesg: Please enter DC name of 3 to 20 characters, excluding special characters
    EOF
    type    = string
}

variable "bandwidth" {
    description = <<-EOF
        description: Bandwidth gbps. (1|10)
        type: number
        required: no
        example:'''
            bandwidth = 10
        '''
    EOF
    type    = number
    default = 1
}

variable "vpc_id" {
    description = <<-EOF
        description: Approver VPC ID
        type: string
        required: yes
        example:'''
            vpc_id = "023c57b14f11483689338d085e061492"
        '''
    EOF
    type = string
}

variable "description" {
    description = <<-EOF
        description: Direct-Connect description. (Up to 50 characters)
        type: string
        required: no
    EOF
    type    = string
    default = null
}

variable "firewall_enabled" {
    description = <<-EOF
        description: Activate Firewall of Direct-Connect or not
        type: bool
        required: no
        example:'''
            firewall_enabled = false
        '''
    EOF
    type    = bool
    default = false
}

variable "firewall_loggable" {
    description = <<-EOF
        description: Activate Firewall Logging or not
        type: bool
        required: no
        example:'''
            firewall_loggable = false
        '''
    EOF
    type    = bool
    default = false
}

variable "tags" {
    description = <<-EOF
        description: Tags
        type: map(string)
        required: no
        example:'''
            tags = {"createdBy" = "gitops"}
        '''
    EOF
    type    = map(string)
    default = {}
}
########## Direct Connect Definition  ########## }
