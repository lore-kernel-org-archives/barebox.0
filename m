Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5KXO-0001bX-GH
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 15:43:43 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Oct 2010 17:42:01 +0200
References: <1286808746-19456-1-git-send-email-jbe@pengutronix.de>
	<1286808746-19456-5-git-send-email-jbe@pengutronix.de>
	<20101011152058.GC7412@game.jcrosoft.org>
In-Reply-To: <20101011152058.GC7412@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010111742.02731.jbe@pengutronix.de>
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
Subject: Re: [PATCH 4/4] Adapt the defconfig for a full blown ChumbyOne support
To: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:52 Mon 11 Oct     , Juergen Beisert wrote:
> > Make the ChumbyOne use of the MCI framework.
> >
> > Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> > ---
> >  arch/arm/configs/chumbyone_defconfig |  224
> > +++++++++++++++++++++++++++++++++-
>
> please use savedefconfig

Sorry, didn't notice the difference yet. I will resend this patch.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
