Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo1.mail-out.ovh.net ([178.32.97.206]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QeOuW-00073G-3N
	for barebox@lists.infradead.org; Wed, 06 Jul 2011 10:00:48 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id 8587B1010E98
	for <barebox@lists.infradead.org>;
	Wed,  6 Jul 2011 12:01:00 +0200 (CEST)
Date: Wed, 6 Jul 2011 11:45:05 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110706094505.GA26643@game.jcrosoft.org>
References: <CAA4bVAHteAopd2PzFUELoG9dFMx_=Dr=GFd-5BpY4KaeyfaiXA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAHteAopd2PzFUELoG9dFMx_=Dr=GFd-5BpY4KaeyfaiXA@mail.gmail.com>
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
Subject: Re: ARM barebox & QEMU
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On 13:40 Wed 06 Jul     , Antony Pavlov wrote:
> Hi!
> 
>  That is the easiest way to run ARM barebox under QEMU?
> 
>  I have had tried default barebox config for versatilepb board, but I
> haven't any success.
I use it recently work fine
take look in the commit the right qemu command

you can use mini2440 with qemu_mini2440 work fine too

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
