Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwN5c-0007pR-FT
 for barebox@lists.infradead.org; Tue, 18 Oct 2016 05:37:29 +0000
Date: Tue, 18 Oct 2016 07:37:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161018053705.lajqirng3w6wkb2x@pengutronix.de>
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
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
Subject: Re: Loading kernel issues
To: Javier Fileiv <javier.fileiv@gmail.com>
Cc: barebox@lists.infradead.org

Hi Javier,

On Sun, Oct 16, 2016 at 11:06:15PM +0200, Javier Fileiv wrote:
> Hi everyone, I've just flashed barebox on my Mini2440. I have 2
> questions/issues now
> 
> 1) When trying to load the kernel from TFTP, everything is ok but when
> it's trying to mount the rootfs something is not working, even though
> I set the rootdelay param to 5 secs.
> 
> 2) I tried also the boot from nand and is working just fine, but there
> no is auto boot when reseting the board... it just give me the barebox
> prompt each time, and if i run from there boot nand it works OK, but
> no automaGically. :)
> 
> Any suggestions? Thank you very much
> 
> 
> LOG FOR TFTP BOOT:
> 
> mini2440:/ boot tftp
> warning: No MAC address set. Using random address A2:50:1F:24:DF:AB
> phy0: Link is up - 100/Full
> T DHCP client bound to address 192.168.0.15
> TFTP from server 192.168.0.10 ('uImage-mini2440' -> '/dev/ram0.kernel')
> #################################################################
> #################################################################
> #################################################################
> #################################################################
> #################################################################
> ################################################
> booting kernel of type uimage from /dev/ram0.kernel
>    Verifying Checksum ... OK
>    Image Name:   Linux-3.16.7-ptx-master
>    Created:      2016-10-13  20:23:14 UTC
>    Image Type:   <NULL> <NULL> <NULL> (<NULL>)
>    Data Size:    1910288 Bytes =  1.8 MB
>    Load Address: 30008000
>    Entry Point:  30008000
> OK
> commandline: console=ttySAC0,115200 mini2440=0tbc rootdelay=5 ip=dhcp
> root=/dev/nfs nfsroot=/path/to/nfs/root,v3,tcp noinitrd

You have to replace nfsroot=/path/to/nfs/root with some valid path.
Since your dhcp server does not pass a root server ip you'll have to add
that aswell, so your nfsroot should look like
nfsroot=192.168.x.y:/path/to/nfsroot. Try 'edit /env/config' to edit
the parameter to your needs. Do not forget saveenv afterwards.

To boot from Nand also edit /env/config and adjust the kernel_loc and
rootfs_loc variables.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
