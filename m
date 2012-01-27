Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rqjve-0003pv-PM
 for barebox@lists.infradead.org; Fri, 27 Jan 2012 11:25:15 +0000
Received: by lagr15 with SMTP id r15so1182270lag.36
 for <barebox@lists.infradead.org>; Fri, 27 Jan 2012 03:25:12 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20120127104631.GX6305@pengutronix.de>
References: <CALQ+5adUr7Sy2z-irN=1eeGGFPu=L9bqBMtmU7JtYJh_tK1NAg@mail.gmail.com>
 <20120127104631.GX6305@pengutronix.de>
From: Igor <igt1972@gmail.com>
Date: Fri, 27 Jan 2012 12:23:03 +0100
Message-ID: <CALQ+5adZoaB-ReF+EOZpXV1_R6XVQcXC2hdWv55Sh0rON0tDRg@mail.gmail.com>
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
Subject: Re: Booting linux on a custom iMX27 board
To: barebox@lists.infradead.org

Hi Uwe,

first of all thanks for the answer.
A few minutes ago I could see the answer that Sasha Hauer sent to Marek Belisko
(that was having a problem similar to mine) and it was "illuminating"!

> Do you have configured the right output port for low level debug? Did
> you pass the earlyprintk kernel parameter?

I didn't know that early printk has to be enabled with a cmd line option!
Sorry...
So I changed Barebox bootargs and I could see my 3.0.8 kernel talking to me!
And this helped the following debug...

>
>> What's the reason for the boot failure?
> Probably not a bootloader problem.
>

You were "probably" right... ;-)

Thanks,
I.

-- 
"Don't find fault, find a remedy."
(Henry Ford)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
