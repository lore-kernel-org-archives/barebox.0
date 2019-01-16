Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjixI-0003P1-Hi
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 11:01:58 +0000
Date: Wed, 16 Jan 2019 12:01:52 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190116110152.GA2508@ravnborg.org>
References: <20190116091727.20447-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190116091727.20447-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] images: Drop unnecessary fix_size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.

On Wed, Jan 16, 2019 at 10:17:27AM +0100, Sascha Hauer wrote:
> Now that we compile the compressed binary into the decompressor we
> no longer need fix_size but can use the linker to fill in the image
> size into the binary.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/lib/pbl.lds.S | 2 +-
>  images/Makefile        | 3 +--
>  2 files changed, 2 insertions(+), 3 deletions(-)

This patch drops the sole user of fix_size.
Should it be ditched from barebox or do we keep it just-in-case?

If ditched from barebox remember to update .gitignore

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
