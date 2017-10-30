Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e9DII-0005x7-9e
 for barebox@lists.infradead.org; Mon, 30 Oct 2017 16:52:12 +0000
Date: Mon, 30 Oct 2017 17:51:41 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20171030165141.GA4531@ravnborg.org>
References: <20171030103421.15353-1-ejo@pengutronix.de>
 <20171030103421.15353-6-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171030103421.15353-6-ejo@pengutronix.de>
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
Subject: Re: [PATCH 5/5] commands: nv: adjust command help
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi enrico

On Mon, Oct 30, 2017 at 11:34:21AM +0100, Enrico Jorns wrote:
> Help did not point out that -r option requires n arguments and did not
> mention support for removing variables in help text.
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
...

> -BAREBOX_CMD_HELP_OPT("-r", "remove non volatile variables")
> -BAREBOX_CMD_HELP_OPT("-s", "Save NV variables")
> +BAREBOX_CMD_HELP_OPT("-r VAR1 ...", "remove non volatile variable(s)")
> +BAREBOX_CMD_HELP_OPT("-s\t", "save NV variables")

It looks inconsistent that we in one line uses "non volatile" and the next line uses "NV".
I know it was like this before but since touching this line consider changing this
detail too.

I skimmed the other pacthes - looked good to me.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
