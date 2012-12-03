Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfSIp-0000ba-Ut
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 09:27:05 +0000
Date: Mon, 3 Dec 2012 10:27:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121203092701.GI10369@pengutronix.de>
References: <alpine.DEB.2.02.1212011123210.14847@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1212011123210.14847@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: should i expect trying to mount a cramfs fs to give me a
 segmentation fault?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sat, Dec 01, 2012 at 11:28:08AM -0500, Robert P. J. Day wrote:
> 
>   again, just following along here:
> 
> http://wiki.barebox.org/doku.php?id=user:first_steps
> 
> i created a small cramfs filesystem image:
> 
> $ ls -l crypto.cramfs
> -rw-rw-r-- 1 rpjday rpjday 24576 Dec  1 11:19 crypto.cramfs
> $ file crypto.cramfs
> crypto.cramfs: Linux Compressed ROM File System data, little endian size 24576 version #2 sorted_dirs CRC 0x969356bc, edition 0, 24
> blocks, 13 files
> $
> 
> started barebox:
> 
> $ ./barebox -i crypto.cramfs
> add file crypto.cramfs()
> 
> 
> barebox 2012.11.0-00305-g159109f #1 Sat Dec 1 07:46:38 EST 2012
> 
> 
> Board: sandbox
> could not get tap device: Operation not permitted
> tap tap0: probe failed: Operation not permitted
> malloc space: 0x7f0f1cb3c010 -> 0x7f0f1d33c00f (size  8 MB)
> Open /dev/env0 No such file or directory
> no valid environment found on /dev/env0. Using default environment
> running /env/bin/init...
> set parameter: No such device
> set parameter: No such device
> set parameter: No such device
> set parameter: No such device
> set parameter: No such device
> barebox:/
> 
>   then tried to mount it as that page suggests:
> 
> barebox:/ mkdir mnt
> barebox:/ mount /dev/fd0 cramfs /mnt
> Segmentation fault (core dumped)
> rpjday@oneiric:~/OE/dist/barebox/git$
> 
>   i also tried the variation:
> 
> barebox> mount -t cramfs /dev/fd0 /mnt
> 
> same result.  help?

cramfs was present in barebox very early. I think in some places the
implementation still assumes that the filesystem image is directly
memory mapped. Probably we should investigate and either add a big
warning somewhere or fix it.

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
