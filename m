Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P3sF9-0000IQ-AB
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 15:18:53 +0000
Date: Thu, 7 Oct 2010 17:16:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101007151648.GD32214@game.jcrosoft.org>
References: <1286457858-29771-1-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1286457858-29771-1-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [RFC] Add MCI card support to barebox
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

	I'll add at91 MCI support and test this framework

Best Regrds,
J.
On 15:24 Thu 07 Oct     , Juergen Beisert wrote:
> This is the second try to send the patch stack via git...hopefully its
> complete this time.
> 
> This patch is based on some work Sascha made already. I tried to bring in some
> light into the MCI framework routines as they are based on code from another
> project. Bear with me, if I didn't add useful comments all over the code. I
> just wasn't able to understand what happen... If someone has more knowledge
> about MCI cards, please take a look at the FIXME/TODOs and make me understand
> why the code does what it does.
> 
> There is no regular user, yet. The first platform (S3C2440 based) I did the
> tests on, is not part of barebox (and will not) and the other platfrom (i.MX23
> ChumbOne) is not yet part of barebox. But will coming soon.
> 
> Comments are welcome.
> 
> Regards,
> Juergen
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
