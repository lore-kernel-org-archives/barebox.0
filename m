Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QTUzO-00069i-De
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 08:16:47 +0000
Received: by wwb39 with SMTP id 39so2761667wwb.18
	for <barebox@lists.infradead.org>; Mon, 06 Jun 2011 01:16:44 -0700 (PDT)
Message-ID: <4DEC8CE4.8070104@gmail.com>
Date: Mon, 06 Jun 2011 10:16:36 +0200
From: Carlo Caione <carlo.caione@gmail.com>
MIME-Version: 1.0
References: <4DE355F0.1020502@gmail.com>
	<20110530095118.GG12442@game.jcrosoft.org>
In-Reply-To: <20110530095118.GG12442@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: guruplug/dreamplug porting
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 30/05/2011 11:51, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so write it in c
>
> a lots of us do so, Sascha or I mostly write the lowlevel init in C now
> as example the generic lowlevel arm init is done in C now
>
> I did it recently on at91rm9200

Is it available in git repository?

> and will update the at91sam9 to c also

[cut]

> First do more simple, use barebox as a second stage start by u-boot and then
> write the lowloevel init
>
> in barebox we do not have one lowlevel init per armvx but one generic one
> so normally the only assembly you could have to write is the
> board_lowlevel_init which can be written in C anynway

Great. Thank you.

Regards,

--
Carlo Caione

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
