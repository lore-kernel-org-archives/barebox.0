Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OMIwn-00008g-GA
	for barebox@lists.infradead.org; Wed, 09 Jun 2010 10:55:50 +0000
Received: by wyb36 with SMTP id 36so763673wyb.36
	for <barebox@lists.infradead.org>; Wed, 09 Jun 2010 03:55:47 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 9 Jun 2010 12:55:47 +0200
Message-ID: <AANLkTikVBjnjLbC2LZBzRZ0C4FqgxOrbsT-tCgMTqGy8@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Subject: barebox with usb cdc-eth driver?
To: barebox@lists.infradead.org

Hi,

I'm not sure if this would be possible and also make a sense
but I think about possibility to add cdc-eth driver to barebox.

If some board doesn't have a eth interface and could be used for development
it would be nice to load kernel via usb cdc-eth and also mount rootfs
via nfs for kernel.

Is there any plan to make it?

Thanks,

Marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
icq: 290551086
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
