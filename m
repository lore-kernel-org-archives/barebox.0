Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.26.mail-out.ovh.net ([46.105.47.155]
	helo=26.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QQzKi-000732-FO
	for barebox@lists.infradead.org; Mon, 30 May 2011 10:04:25 +0000
Date: Mon, 30 May 2011 11:51:18 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110530095118.GG12442@game.jcrosoft.org>
References: <4DE355F0.1020502@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4DE355F0.1020502@gmail.com>
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
Subject: Re: guruplug/dreamplug porting
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On 10:31 Mon 30 May     , Carlo Caione wrote:
> Hi,
> I was wondering how feasible it is to port barebox on
> guruplug/dreamplug marvell-based boards.
> The most noticeable problem for me is the initialization part in asm
> (I'm not an asm junkie).
so write it in c

a lots of us do so, Sascha or I mostly write the lowlevel init in C now
as example the generic lowlevel arm init is done in C now

I did it recently on at91rm9200
and will update the at91sam9 to c also
> Is it possible to reuse the arm code (asm)
mostly you can copy it but you will have to put it in the right section
> in the current version of barebox or at least to take it from u-boot
> sources (according to uboot conf files, uboot uses the arm926ejs as
> CPU for the guruplug)?
First do more simple, use barebox as a second stage start by u-boot and then
write the lowloevel init

in barebox we do not have one lowlevel init per armvx but one generic one
so normally the only assembly you could have to write is the
board_lowlevel_init which can be written in C anynway

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
