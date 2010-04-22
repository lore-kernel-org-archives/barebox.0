Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.konzeptpark.de ([195.226.66.162] helo=mail.konzeptpark.de)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1O4tNw-0002uJ-6J
	for barebox@lists.infradead.org; Thu, 22 Apr 2010 10:11:53 +0000
Received: from KPLADC0001 (cantor.konzeptpark.de [172.25.0.211])
	by mail.konzeptpark.de (Postfix) with SMTP id D82A2231E0
	for <barebox@lists.infradead.org>;
	Thu, 22 Apr 2010 12:05:50 +0200 (CEST)
Received: from [172.25.0.211] (helo=kpladc0001.konzeptpark.intra)
	by KPLADC0001 with G Data MailSecurity;
	for <barebox@lists.infradead.org>; Thu, 22 Apr 2010 12:10:57 +0200
From: Carsten Schlote <c.schlote@konzeptpark.de>
Date: Thu, 22 Apr 2010 12:10:56 +0200
Message-ID: <1271931056.12005.59.camel@kplaws107lx>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Updated MPC5200B support (pcm030, kp-mcb2, ...)
To: barebox@lists.infradead.org

Hi,

yesterday I spent some time to get BareBox up and running on MPC5200B
again. Finally I got it working on our hardware. Not yet tested for
phytec pcm030, but I'm sure that without some fixes it won't work out of
the box.

I found and hacked/fixed the following problems so far:
- cfi_flash driver has problems with big-endian. Some byte swapping is
done in readb()/writeb() at HW access layer and also at several other
places in the CFI driver. Swapping things twice isn't exactly what the
driver and the flashdevice expects and needs a lot of more cleanups.
- Detection of flash/bank layout was hacked to workaround 'faulty'
values read from flash device (might be also a chip or HW design
problem, I need to check that in more detail)
- CFI flash buffer writes are broken with big-endian as well
- Some problems and old bugs from the u-boot-v1 era found in cpu_init.c.
Fortunately the HW did the right things although some register setups
were broken.
- Missing headers for arch/ppc to compile the liblzo code.
(unsigned.h ?)

Now with network, flash and basic debugging outputs available I would
like to port some more drivers and at least RO filesystems (fat, jffs2,
ext2/3/4) for MPC5xxx platform and replace the stone-age crappy u-boot
asap.

Just in case - Is there any on-going or even experimental work for MPC I
could start with?


-- 
Carsten Schlote <c.schlote@konzeptpark.de>
konzeptpark.de

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
