Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIMB6-0001ay-7j
 for barebox@lists.infradead.org; Mon, 02 Feb 2015 18:56:56 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1422709810-30622-1-git-send-email-robert.jarzmik@free.fr>
 <20150202091705.GW12209@pengutronix.de>
Date: Mon, 02 Feb 2015 19:56:33 +0100
In-Reply-To: <20150202091705.GW12209@pengutronix.de> (Sascha Hauer's message
 of "Mon, 2 Feb 2015 10:17:05 +0100")
Message-ID: <8761bkb0ri.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Re: [PATCH v2 1/3] net: smc1111: add 16 bits accessors,
 allow address shift
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> Applied all, thanks
>
> Sascha
Thanks Sascha,

I noticed that in my patchset I moved the "struct smc91111_accessors {...}" from
smc9111.c to include/net/smc91111.h.

This was when I thought the accessors would be settable from platform code. Do
you want me to send an incremental patch to reverse this ?

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
