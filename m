Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo69.mail-out.ovh.net ([46.105.56.78])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVL5F-0006pD-GN
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 14:24:34 +0000
Received: from mail409.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id 7AB2110040CF
 for <barebox@lists.infradead.org>; Tue, 10 Mar 2015 15:24:10 +0100 (CET)
Date: Tue, 10 Mar 2015 15:24:07 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150310142407.GI30554@ns203013.ovh.net>
References: <1425566201-31989-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425566201-31989-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 0/3] sandbox cleanups
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:36 Thu 05 Mar     , Marc Kleine-Budde wrote:
> Hey Sascha,
> 
> three patches for next, please fixup into the for-next/sandbox-of banch.

I test the new sanbox on next

when you pass -i the file is not present in the /dev now

I'm working on secure boot and I use sandbox & qemu to test it

can we fix it asap please TOO busy to dig into it

Best Regards,
J.
> 
> Two patches cleanup the hostfile handling, while the third one will generate a
> device tree of the fly, if no one is specified on the sandbox command line.
> 
> Marc
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
