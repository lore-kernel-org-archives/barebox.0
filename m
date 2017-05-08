Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay0115.hostedemail.com ([216.40.44.115]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7it9-0004IR-8J
 for barebox@lists.infradead.org; Mon, 08 May 2017 13:39:49 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 555D69ED8D
 for <barebox@lists.infradead.org>; Mon,  8 May 2017 13:39:22 +0000 (UTC)
Received: from [10.0.0.53] (unknown [81.133.34.160])
 (Authenticated sender: ian@abbott.org)
 by omf04.hostedemail.com (Postfix) with ESMTPA
 for <barebox@lists.infradead.org>; Mon,  8 May 2017 13:39:21 +0000 (UTC)
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <91e8e828-d3c3-5c56-0a92-a52c493b8354@mev.co.uk>
Date: Mon, 8 May 2017 14:39:19 +0100
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Setting MAC address from nv variable broken in barebox 2017.05.0?
To: barebox@lists.infradead.org

Hi,

I'm not sure if this is a bug or whether I'm doing something wrong.  In 
barebox 2017.04.0 and earlier, I stored the Ethernet MAC address in a 
non-volatile ('nv') variable dev.eth0.macaddr=xx:xx:xx:xx:xx:xx and that 
got propagated to 'global' and the eth0 device on boot:

barebox@xxxx:/ nv
   allow_color: true
   autoboot_timeout: 3
   dev.eth0.ethaddr: xx:xx:xx:xx:xx:xx
   user: none

barebox@xxxx:/ global
* allow_color: true
* autoboot_timeout: 3
   boot.default: xxxx
   boot.watchdog_timeout: 0
   bootm.appendroot: 0
   bootm.image:
   bootm.image.loadaddr:
   bootm.initrd:
   bootm.initrd.loadaddr:
   bootm.oftree:
   bootm.verbose: 0
   bootm.verify: hash
* dev.eth0.ethaddr: xx:xx:xx:xx:xx:xx
   dhcp.bootfile:
   dhcp.client_id:
   dhcp.client_uuid:
   dhcp.oftree_file:
   dhcp.rootpath:
   dhcp.tftp_server_name:
   dhcp.user_class:
   dhcp.vendor_id:
   editcmd: sedit
   hostname: generic
   linux.bootargs.base:
   linux.bootargs.console:
   linux.bootargs.dyn.ip:
   linux.bootargs.dyn.root:
   linux.rootnfsopts: v3,tcp
   loglevel: 4
   model: xxxx
   system.reset: unknown
* user: none
   version: 2017.04.0

barebox@xxxx:/ devinfo eth0
Parameters:
   ethaddr: xx:xx:xx:xx:xx:xx
   gateway: 0.0.0.0
   ipaddr: 0.0.0.0
   linux.bootargs:
   netmask: 0.0.0.0
   serverip: 0.0.0.0

However, in 2017.05.0, my 'dev.eth0.ethaddr' variable is no longer being 
propagated to global on boot, and as a consequence, is no longer 
propagated to eth0 (note that 'dev.eth0.ethaddr' is the only nv variable 
that I set manually when setting up a new board):

barebox@xxxx:/ global
* allow_color: true
* autoboot_timeout: 3
   boot.default: xxxx
   boot.watchdog_timeout: 0
   bootm.appendroot: 0
   bootm.image:
   bootm.image.loadaddr:
   bootm.initrd:
   bootm.initrd.loadaddr:
   bootm.oftree:
   bootm.verbose: 0
   bootm.verify: hash ("none", "hash", "signature", "available")
   dhcp.bootfile:
   dhcp.client_id:
   dhcp.client_uuid:
   dhcp.oftree_file:
   dhcp.rootpath:
   dhcp.tftp_server_name:
   dhcp.user_class:
   dhcp.vendor_id:
   editcmd: sedit
   hostname: generic
   linux.bootargs.base:
   linux.bootargs.console:
   linux.bootargs.dyn.ip:
   linux.bootargs.dyn.root:
   linux.rootnfsopts: v3,tcp
   loglevel: 4
   model: xxxx
   of_partition_binding: new ("new", "legacy", "donttouch")
   system.reset: unknown ("unknown", "POR", "RST", "WDG", "WKE", "JTAG", 
"THERM", "EXT")
* user: none
   version: 2017.05.0

barebox@xxxx:/ devinfo eth0
Parameters:
   ethaddr: 00:00:00:00:00:00
   gateway: 0.0.0.0
   ipaddr: 0.0.0.0
   linux.bootargs:
   netmask: 0.0.0.0
   serverip: 0.0.0.0

I can work around this using a script in /env/init/ to set the global 
from the nv variable, or change /env/network/eth0 to set the MAC address 
from the nv variable.

Is this the proper behaviour or a bug?  Could it be related to commit 
35d8e858bea17ec4796069c9c27fd0b134125eaf ("nv: Do not create globalvars 
from nvvars")?

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
