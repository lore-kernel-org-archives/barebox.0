Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwqpK-0006ec-DR
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 09:36:47 +0000
Received: by mail-lb0-f173.google.com with SMTP id v1so5510054lbd.4
 for <barebox@lists.infradead.org>; Wed, 10 Jul 2013 02:36:22 -0700 (PDT)
Message-ID: <51DD2B12.3060106@gmail.com>
Date: Wed, 10 Jul 2013 15:36:18 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <1373383330-13126-1-git-send-email-agalakhov@gmail.com>
 <20130709174333.GY516@pengutronix.de>
 <5C73F356-67C8-4D18-B0B8-3D0BE89794A7@jcrosoft.com>
 <51DC6E0E.2090806@gmail.com>
 <FEE56E32-09DD-4D07-BFFD-D986FAEA78F9@jcrosoft.com>
 <51DD1D11.1010103@gmail.com> <20130710090131.GE516@pengutronix.de>
In-Reply-To: <20130710090131.GE516@pengutronix.de>
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
Subject: Re: [PATCH] Force set console baudrate
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 07/10/2013 03:01 PM, Sascha Hauer wrote:

> Anyway, maybe Jean-Christophe is right and we should do this in
> console_std_set by adding:
> 
> 	if(flag && cdev->setbrg)
> 		cdev->setbrg(cdev, cdev->baudrate);
> 
> This makes sure the hardware is only ever touched when the console is
> actually used.
> 
> Sascha
> 

Hi,

Agree. The only reason not do to so was that I saw the existing code,
especially the else clause in console_baudrate_set().

I just made v2 of the patch. I'm testing it right now. If it's Ok, I'll
submit it.

I did almost exactly this. The difference is that I do not call setbrg()
again if the device is already active. I also removed setbrg() call for
inactive devices from console_baudrate_set() as this would be duplicate
call now.

Regards,
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
