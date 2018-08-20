Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vmse01.mailcluster.com.au ([2401:fc00:2:13f::6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1frh0j-0002Tp-Mz
 for barebox@lists.infradead.org; Mon, 20 Aug 2018 10:02:12 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Mon, 20 Aug 2018 20:00:20 +1000
Message-ID: <2886288.bVmeovjx03@dev4>
In-Reply-To: <20180820090755.3e4pm6m7hiwy6kdx@pengutronix.de>
References: <20180820015736.6680-1-marc@cpdesign.com.au>
 <20180820090755.3e4pm6m7hiwy6kdx@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: dts: am335x: introduce new "stripped"
 common.dtsi for PBL use
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Roland, (and everyone)

> 
> you can use git-send-email's --reroll-count=2 / -v2 parameter to change
> the subject line to "PATCH v2", to make clear that a previous variant
> for this patch series was already discussed on the list. In that case it
> is also good practice to give a short changelog what has changed between
> the versions, either in your cover letter (if you use one),

Apologies to all. I had edited my previous command line to add "-v 2" (which I 
guess didn't work like "-v2") and I accidentally took out "--compose".. by the 
time I realized it was too late and all was sent.

Now that I have the attention of whomever has read this far..  this V2 series 
changes just the third patch to operate on the correct file. (weirdly, the V1 
compiled OK for me).

Cheers,
Marc



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
