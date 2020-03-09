Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBBy2-0006S3-TI
 for barebox@lists.infradead.org; Mon, 09 Mar 2020 06:32:49 +0000
Date: Mon, 9 Mar 2020 07:32:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20200309063242.c76wuxgdvkl6u77w@pengutronix.de>
References: <20200303174616.4476-1-m.felsch@pengutronix.de>
 <20200303174616.4476-3-m.felsch@pengutronix.de>
 <20200306160603.7it2ljm22lge4jwe@porty>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306160603.7it2ljm22lge4jwe@porty>
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
Subject: Re: [PATCH 3/3] ARM: nitrogen6: remove hard coded values
To: Stefan Lengfeld <contact@stefanchrist.eu>
Cc: barebox@lists.infradead.org

Hi Stefan,

On 20-03-06 17:06, Stefan Lengfeld wrote:
> Hi Marco,
> 
> my two cents:
> 
> On Tue, Mar 03, 2020 at 06:46:16PM +0100, Marco Felsch wrote:
> > Since commit c3f5ce7308 ("net: phy: micrel: Add support for specifying pad
> > skew values") and commit 2720a02e8a ("net: phy: micrel: backport finding
> > PHY properties") the phy driver can handle this taking the DT specified
> 
> The first commit id 'c3f5ce7308' is a *stable* commit id, because
> Sascha's 'master' branch of the barebox already contains the
> patch/commit. It's safe to use it in commit messages and e.g. 'Fixes:'
> tags.

I don't add such tags for barebox because it doesn't make sense here.

> The second commit id '2720a02e8a' is not stable, because the patch is
> part of your series and therefore not yet in Sascha's master branch.
> When Sascha applies the patch to his git tree, the patch will have a
> different commit id, because it will have a different parent, committer
> and date.

You're right here, I imagined it after I send the patch series..
@Sascha
Pls, can you drop the commit-id or adapt it after you applied the patch?

> If you want to reference a patch in your series from a commit message,
> you mostly just use something like 'and the previous patch (...)'.

I will keep that in mind, thanks :)

Regards,
  Marco

> Kind regards,
> Stefan
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
