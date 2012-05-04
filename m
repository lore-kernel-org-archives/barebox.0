Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQF0t-0005x4-H6
 for barebox@lists.infradead.org; Fri, 04 May 2012 09:41:24 +0000
Received: by lagy4 with SMTP id y4so2364130lag.36
 for <barebox@lists.infradead.org>; Fri, 04 May 2012 02:41:21 -0700 (PDT)
Message-ID: <4FA3A43E.4090000@gmail.com>
Date: Fri, 04 May 2012 15:41:18 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
 <1336050844-7043-4-git-send-email-agalakhov@gmail.com>
 <201205031949.55938.jbe@pengutronix.de>
In-Reply-To: <201205031949.55938.jbe@pengutronix.de>
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
Subject: Re: [PATCH 3/4] Minimal S5PV210 + Tiny210 support (2nd stage only)
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On 03.05.2012 23:49, Juergen Beisert wrote:
> Alexey Galakhov wrote:
>> +void __bare_init board_init_lowlevel(void)
>> +{
>> +}
> 
> Why do you add an empty function?
> 
> [...]
> 
> Juergen
> 


A placeholder for now. I'll fill it in the next few days (DRAM
controller init).

S5PV210 won't work without lowlevel init, so I preferred to add an empty
function in order to make low level init Kconfig option mandatory.


Regards,
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
