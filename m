Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIWlN-0007q3-Tj
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 06:15:07 +0000
Date: Tue, 03 Feb 2015 15:14:41 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
In-Reply-To: <20150202121632.GC12209@pengutronix.de>
References: <20150202205038.451E.AA925319@jp.panasonic.com>
 <20150202121632.GC12209@pengutronix.de>
Message-Id: <20150203151440.4535.AA925319@jp.panasonic.com>
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
Subject: Re: [PATCH] watchdog: imx: error out on negative timeouts
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>


On Mon, 2 Feb 2015 13:16:32 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Feb 02, 2015 at 08:50:38PM +0900, Masahiro Yamada wrote:
> > 
> > On Mon, 2 Feb 2015 12:04:32 +0100
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > 
> > > On Mon, Feb 02, 2015 at 11:49:57AM +0100, Uwe Kleine-Konig wrote:
> > > > Hello,
> > > > 
> > > > On Tue, Jan 27, 2015 at 02:41:01PM +0100, Uwe Kleine-Konig wrote:
> > > > > I'm not sure where a negative timeout could come from but making the
> > > > > code more robust for no additional runtime cost is good nevertheless.
> > > > > 
> > > > > Signed-off-by: Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>
> > > > > ---
> > > > >  drivers/watchdog/imxwd.c | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> > > > > index 31c3d0d85353..66e9f6848f74 100644
> > > > > --- a/drivers/watchdog/imxwd.c
> > > > > +++ b/drivers/watchdog/imxwd.c
> > > > > @@ -87,7 +87,7 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, int timeout)
> > > > >  
> > > > >  	dev_dbg(priv->dev, "%s: %d\n", __func__, timeout);
> > > > >  
> > > > > -	if (!timeout || timeout > 128)
> > > > > +	if (timeout <= 0 || timeout > 128)
> > > > >  		return -EINVAL;
> > > > This patch is broken because reset_cpu (in the same source file) calls
> > > > set_timeout with timeout=-1 to reset the cpu immediatly. The wd command
> > > > only parses non-negative values, so from there nothing strange should be
> > > > expected.
> > > > 
> > > > Returning -EINVAL on timeout=0 (which means "disable watchdog") is OK
> > > > because the imx21 watchdog cannot be stopped.
> > > > 
> > > > So in short: please drop this patch from next.
> > > 
> > > Did that.
> > > 
> > 
> > 
> > Forgive my newbie questions.
> > 
> > I have been studied barebox for one month and a half,
> > I think I could roughly understand the next branch policy in this community,
> > but could you help me to make it a little bit clearer?
> > 
> > 
> > I guess the barebox/next is similar to the linux-next repository.
> > 
> > Similar points are:
> >  [1] barebox/next is not fast-forwarded
> >      (Developers should work with "git rebase --onto" as we do in linux-next
> 
> If possible please base your patches on the master branch. I'll pick a
> suitable for-next/* branch merge the for-next/* branches together and
> handle the merge conflicts. If you have direct dependencies on some
> patches in -next you can base your patches on -next.
> 
> >  [2] barebox/next represents the source tree that is *probably* merged into the master branch
> >      after the next release.
> >      (Perhaps, barebox might not have what we call Merge Window,
> >       but I notice topic branches are merged right after every-month release.)
> 
> yes.
> 
> > 
> > 
> > On the other hand, I notice some differences
> > 
> > [3] All the topic branches are locally maintained by Sascha, so they are never pushed
> >     to the public repository.
> 
> Right.
> 
> > [4] Some commits in topic branches might be dropped rather than being git-reverted
> >     if they turned out to be bad.
> 
> Right. Also you can always send a patch committed with "--fixup=" to the
> list, then I can just squash the changes into the original commit.
> 
> I routinely build every commit in -next with every defconfig in the
> tree. It regularly happens that patches do not build in every defconfig
> because of missing ifdefs or dependencies. Most of the times I fix that
> up quietly.
> 
> >     (i.e. commit ID becomes a fixed value when it is merge into the master branch.)
> 
> Yes.
> 
> > 
> > 
> > If [4] is true, we should not describe the commit ID in the following commits
> > until it is merged into the master branch.   (Or we should be very careful when we do so.)
> 
> Yes.
> 
> > 
> > We often write something like
> > "Since commit xxxxxxxxxxxx, the foo function has not been working. Blah Blah ..."
> > in bug-fix patches.
> > But xxxxxxxxxxxx may change if the preceding commit is dropped or modified.
> 
> As long xxxxxxxxxxxx hasn't hit master you can just ask me to fix the
> offending commit directly, preferably using --fixup= to git-commit.
> Once it hits master the commit IDs are stable, so you can refer to them
> in bug fix patches.


Sascha,
Thanks for clarification.
I will keep them in my mind.


Please let me ask one more question.

 Is there any pach tracking tool used for barebox, like PatchWork?

I guess the answer is no.

The barebox ML does not have much volume and your review is very quick,
so I do not think we need such a tool.


Best Regards
Masahiro Yamada


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
