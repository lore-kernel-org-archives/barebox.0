Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zs4Q4-0002bk-97
 for barebox@lists.infradead.org; Fri, 30 Oct 2015 07:48:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <mol@pengutronix.de>) id 1Zs4Ph-0003Wf-MD
 for barebox@lists.infradead.org; Fri, 30 Oct 2015 08:47:53 +0100
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <mol@pengutronix.de>) id 1Zs4Ph-0002BW-Ee
 for barebox@lists.infradead.org; Fri, 30 Oct 2015 08:47:53 +0100
Date: Fri, 30 Oct 2015 08:47:53 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20151030074753.GA32176@pengutronix.de>
References: <trinity-0d310d91-ea1a-4a70-b46d-11b3b53ff135-1446065406666@3capp-gmx-bs58>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-0d310d91-ea1a-4a70-b46d-11b3b53ff135-1446065406666@3capp-gmx-bs58>
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
Subject: Re: Booting Linux bzImage on x86_64
To: barebox@lists.infradead.org

Hi,

On Wed, Oct 28, 2015 at 09:50:06PM +0100, Viktor Stark wrote:
> I recently discovered barebox and I am trying to boot a Linux bzImage on an
> x86_64 embedded platform.
> 
> Some background: My project involves an x86_64 embedded device for which I am
> building a bzImage and a root filesystem with buildroot. The idea is to have
> multiple combinations of these in order to serve different use cases, but
> also for fallback situations.
> 
> I went down both possible ways on x86, but cannot really find a way to boot a bzImage.
> 
> Both configurations are tested under QEMU with barebox 2015.10.0.
> 
> 1. EFI - I have a working barebox.efi living inside an EF00 partition. The
> issue I am having is that I cannot really find any pointers as to how to boot
> a bzImage from these. I have found some earlier posts on the list indicating
> that it is not possible to boot a bzImage from EFI, but also a G+ post saying
> that it is possible.

I'm running my Laptop with Barebox on EFI, so it's certainly possible.
Without any error messages I can only guess what the problem might be.
Have you enabled CONFIG_EFI_STUB in your kernel config? This is necessary
for barebox to boot your kernel.

> 2. Non-EFI - I have compiled barebox with the attached config file, but it
> seems to triple fault according to qemu. AFAICT (zero asm knowledge here), it
> seems to be in pmjump.S.
> Triple fault

This is _really_ old code. Nobody has tested this in a long time. It's most
likely broken in many ways. Don't use it unless you're interested in
barebox development and want to fix it :-).

Regards,
Michael


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
