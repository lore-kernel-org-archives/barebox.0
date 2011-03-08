Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from susu.bendor.com.au ([203.16.199.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PwmLF-0006ZY-OA
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 02:08:06 +0000
Received: from manocska.bendor.com.au (manocska.bendor.com.au [203.16.199.6])
	by susu.bendor.com.au (Postfix) with ESMTP id 9F20F1D32
	for <barebox@lists.infradead.org>; Tue,  8 Mar 2011 13:08:02 +1100 (EST)
Date: Tue, 8 Mar 2011 13:08:02 +1100
From: =?UTF-8?B?Wm9sdMOhbiBLw7Njc2k=?= <zoltan@bendor.com.au>
Message-ID: <20110308130802.72018ed3@manocska.bendor.com.au>
In-Reply-To: <201103071424.14270.jbe@pengutronix.de>
References: <201103071424.14270.jbe@pengutronix.de>
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
Subject: Re: [RFC] S3C24xx: Fixing the NAND handling
To: barebox@lists.infradead.org

On Mon, 7 Mar 2011 14:24:13 +0100
Juergen Beisert <jbe@pengutronix.de> wrote:


>  - the driver's local OOB layout for small page NANDs overwrites the
> vendors bad block marker (a really bad idea!)
>  - the ECC setup for large page NANDs violates NANDs partial write
> count (it forces 8 partial writes instead of allowed 4 per 2048 byte
> page)
> 
> How to adapt barebox according to the kernel? If we do OOB and ECC
> setup correctly in barebox, the mainline kernel cannot work with this
> data. If we do it in the same way than the kernel, we lose the bad
> block markers or do more writes than the manufacturer allows for
> reliable data security.
> 
> Changing the kernel is also hard to do, because it breaks existing
> software installations which should just run with more recent kernels.

I believe that kernel has to be fixed. If it is broken and violates the
chip manufacturer's speifications, then you can't (or shouldn't) use it
on the field anyway. In that case you have to accept that upgrading the
kernel will mean that you also have to rewrite whatever code you have
which depends on the *incorrect* treatment of the hardware. 

Prolonging the existence of mistreatment of hardware in the name of
backward compatibility is not a good thing, I believe.

Zoltan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
