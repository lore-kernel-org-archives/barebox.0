Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from www.futurasmus-knxgroup.org ([37.187.160.104]
 helo=mail.knx-group.net)
 by bombadil.infradead.org with smtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4imA-0007kR-7G
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:05:16 +0000
Message-ID: <4ab3078e8655eebe813befaf0f3bf3edecf7726c.camel@futurasmus-knxlab.es>
From: jairo <jairo@futurasmus-knxlab.es>
Date: Fri, 15 Mar 2019 10:05:10 +0100
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [help][bootchooser][device-tree] create an update system with yocto
 and rauc
To: barebox@lists.infradead.org

Hi all,

I need to do an update system for a system embedded with yocto with the
aid of rauc, but I have some doubts ..

I have to change the boot system to bootchooser, for this, according to
the rauc documentation, I have to create a node in the internal device-
tree in which the state of the bootchooser is saved.

nv bootchooser.state_prefix = "boot_state"

Is the internal device-tree different from the kernel's device-tree?
Is it assumed that the internal device-tree is already in the barebox
binary or is dynamically loaded?
if I run of_dump I can see the device-tree but I do not know if it can
be edited before doing the barebox binary.

If I try to load a binary devicetree (the one that uses the kernel)
with the command
oftree -l /dev/nand0.root.ubi.oftree.0
I get the following error:
setting root node failed: Device or resource busy
oftree: Device or resource busy

On the other hand I have tried to update the devicetree that is already
loaded by commands of_node and of_property, (
https://rauc.readthedocs.io/en/latest/integration.html#barebox)

'''
#! / bin / sh

of_node -c / boot_state
of_node -c / boot_state / system0
of_node -c / boot_state / system1
of_node -c / boot_state / last_chosen @ 10
of_node -c / boot_state / system0 / remaining_attempts @ 0
of_node -c / boot_state / system0 / priority @ 4
of_node -c / boot_state / system1 / remaining_attempts @ 0
of_node -c / boot_state / system1 / priority @ 4


of_property -s / boot_state / system0 / remaining_attempts @ 0 reg
<0x04>
of_property -s / boot_state / system0 / remaining_attempts @ 0 type
uint32
of_property -s / boot_state / system0 / remaining_attempts @ 0 default
<3>

of_property -s / boot_state / system0 / priority @ 4 reg <0x4 0x4>
of_property -s / boot_state / system0 / priority @ 4 type uint32
of_property -s / boot_state / system0 / priority @ 4 default <20>

of_property -s / boot_state / system1 / remaining_attempts @ 0 reg <0x8
0x4>
of_property -s / boot_state / system1 / remaining_attempts @ 0 type
uint32
of_property -s / boot_state / system1 / remaining_attempts @ 0 default
<3>

of_property -s / boot_state / system1 / priority @ 4 reg <0xC 0x4>
of_property -s / boot_state / system1 / priority @ 4 type uint32
of_property -s / boot_state / system1 / priority @ 4 default <20>

of_property -s / boot_state / last_chosen @ 10 reg <0x10 0x4>
of_property -s / boot_state / last_chosen @ 10 type uint32 '''



up here, fine, but if I try to add the following line,

'''of_property -s / boot_state / system1 # address-cells <1>'''

barebox reboots and the following error exits

unable to handle NULL pointer dereference at address 0x0000000d
[...]

at the end with all the attempts, if I execute
Boot bootchooser, the following error occurs

Nothing bootable found on 'bootchooset'
Nothing bootable found


Any help is appreciated



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
