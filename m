Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T90aR-0002We-OS
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 21:23:09 +0000
Received: by ieje10 with SMTP id e10so6272612iej.36
 for <barebox@lists.infradead.org>; Tue, 04 Sep 2012 14:23:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120904204725.GA26594@pengutronix.de>
References: <CACO6GO7pfavefJa_wTcR7ifHwWVS8up7-TRW8ArQzXoeL1JHCA@mail.gmail.com>
 <201208272001.50503.jbe@pengutronix.de>
 <CACO6GO68_8oLS2caknd=+j1C5ewdWtR65tTfwa_gviPYEjuSsQ@mail.gmail.com>
 <20120904204725.GA26594@pengutronix.de>
Date: Tue, 4 Sep 2012 17:23:03 -0400
Message-ID: <CACO6GO7BKCPaaK6EU2=6m1uOV7+WJVPNsOjSpwivcFwz6AZdBA@mail.gmail.com>
From: Fadil Berisha <f.koliqi@gmail.com>
Reply-To: f.koliqi@gmail.com
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
Subject: Re: barebox on imx23-olinuxino
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

Sascha

On Tue, Sep 4, 2012 at 4:47 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> The problem is the 5th parameter. It is the size of the memory resource.
> When speicified as 0 you will not be able to request it. It seems we
> still have not catched all of these. We should probably add a warning
> if someone tries to register a device with a valid resource but size =
> 0.
Thank you for your help. I will clean-up my workaround and define size
as needed. Barebox booting good in olinuxino. At this stage, I am
doing testing and adjusting env parameters.

Regards,
Fadil Berisha

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
