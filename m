Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp04.smtpout.orange.fr ([80.12.242.126]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YH6YS-0001Ov-Vt
 for barebox@lists.infradead.org; Fri, 30 Jan 2015 08:03:53 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <20150129094720.GG12209@pengutronix.de>
 <201838670.425159504.1422540063764.JavaMail.root@zimbra1-e1.priv.proxad.net>
 <20150130073747.GO12209@pengutronix.de>
Date: Fri, 30 Jan 2015 09:03:25 +0100
In-Reply-To: <20150130073747.GO12209@pengutronix.de> (Sascha Hauer's message
 of "Fri, 30 Jan 2015 08:37:47 +0100")
Message-ID: <87386sofua.fsf@free.fr>
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
Subject: Re: [PATCH 1/3] net: smc1111: allow platform specific accessors
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> That sounds better. Using accessors in platform_data really is more
> flexible, but when switching to device tree we'll need a width/shift
> approach anyway.
Ok, I'm on it, for v2.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
