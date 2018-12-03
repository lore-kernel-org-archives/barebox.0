Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gTgBT-0006E3-9M
 for barebox@lists.infradead.org; Mon, 03 Dec 2018 04:50:16 +0000
Date: Mon, 3 Dec 2018 05:49:52 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181203044952.GA29581@ravnborg.org>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
 <20181129113048.31857-8-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181129113048.31857-8-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 07/15] Makefile: link of barebox moved to script
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Steffen.

In general - nice patch series.

On Thu, Nov 29, 2018 at 12:30:40PM +0100, Steffen Trumtrar wrote:
> Adoption of the linux v3.4 patch: 1f2bfbd00e466ff3489b2ca5cc75b1cccd14c123

It would be simpler if you just synchronized the current state of the
link script - it has seen many improvements since the introduction.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
