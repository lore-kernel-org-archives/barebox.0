Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH7zE-000849-NW
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 13:53:47 +0000
Date: Mon, 29 Oct 2018 14:53:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181029135332.zdljgjg2lkti3nfv@pengutronix.de>
References: <8b1454dd-7a19-f6c8-d3cd-863372947e4c@mni.thm.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b1454dd-7a19-f6c8-d3cd-863372947e4c@mni.thm.de>
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
Subject: Re: No default env without Barebox wanting to load from persistant
 storage
To: Martin Hofmann <martin.hofmann@mni.thm.de>
Cc: barebox@lists.infradead.org

Hi Martin,

On Sun, Oct 28, 2018 at 04:24:13PM +0100, Martin Hofmann wrote:
> Hello everyone,
> 
> I am currently working on a Barebox port for our own home made architecture
> used for educational purpose.
> 
> The port can be found under github.com/mh0fmann/eco32-barebox and starts
> being used.
> 
> Our architecture does not have any kind of nand or nor flash that can be
> added used for /dev/env0 to store a environment in it but we still want to
> use a default compile in enivornment.
> 
> In oderder to use that one is in the in the need to activate
> CONFIG_ENV_HANDLING which alaways wants to load a environment from
> /dev/env0.
> 
> So the question is - is it not possible to just use a compile in default env
> without the need that barebox wants to load another env from somewhere else
> or did i miss something on the way?

Indeed this a usecase I never thought of and is not officially
supported. However, a

	default_environment_path_set(NULL);

Should have the desired effect.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
