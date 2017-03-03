Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ot0-x230.google.com ([2607:f8b0:4003:c0f::230])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjnOX-0003RQ-LL
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 13:37:21 +0000
Received: by mail-ot0-x230.google.com with SMTP id 19so2762351oti.0
 for <barebox@lists.infradead.org>; Fri, 03 Mar 2017 05:36:57 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170303132827.2372-1-robin@protonic.nl>
References: <20170303132827.2372-1-robin@protonic.nl>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 3 Mar 2017 10:36:56 -0300
Message-ID: <CAOMZO5D+geun5=9ep8gtbSpO0yDviKvPQi_TVovXV3qphcXwKQ@mail.gmail.com>
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
Subject: Re: [PATCH] clk: imx: clk-imx6ul: The i.mx6ul has no aips_tx3 clock
To: Robin van der Gracht <robin@protonic.nl>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Sascha Hauer <kernel@pengutronix.de>

In the Subject I guess you meant "aips_tz3"

On Fri, Mar 3, 2017 at 10:28 AM, Robin van der Gracht <robin@protonic.nl> wrote:
> The clock was mapped on CG15 (gpio2_clocks) in the CCRG0 register.
>
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---

You should have marked it as v2.

Good catch, with the Subject fixed you can add:
Reviewed-by: Fabio Estevam <fabio.estevam@nxp.com>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
