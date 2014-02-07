Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo1.mail-out.ovh.net ([87.98.162.229]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBpZE-0002jc-To
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 17:50:21 +0000
Received: from mail421.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id C97C4FFC16C
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 18:56:40 +0100 (CET)
Date: Fri, 7 Feb 2014 18:51:14 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140207175114.GL9671@ns203013.ovh.net>
References: <20140207071332.GE16215@pengutronix.de>
 <20140207141028.GT8533@titan.lakedaemon.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140207141028.GT8533@titan.lakedaemon.net>
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
Subject: Re: Devicetree Maintenance in barebox
To: Jason Cooper <jason@lakedaemon.net>
Cc: Grant Likely <grant.likely@secretlab.ca>, barebox@lists.infradead.org, devicetree@vger.kernel.org, Ian Campbell <ijc@hellion.org.uk>

On 09:10 Fri 07 Feb     , Jason Cooper wrote:
> Hi Sascha,
> 
> + Grant Likely, Ian Campbell, devicetree ML
> 
> This discussion started on the barebox bootloader mailinglist
> 
> On Fri, Feb 07, 2014 at 08:13:32AM +0100, Sascha Hauer wrote:
> > It's becoming more obvious that devicetree maintenance is painful
> > because we have to sync them to the kernel regularly. My hope was that
> > this would get simpler once the devicetrees get their own repository
> > outside the kernel, but it seems that won't happen anytime soon.
> 
> hmm.  Ian Campbell has a tree he is working on:
> 
>   git://xenbits.xen.org/people/ianc/device-tree-rebasing.git
> 
> Also, In the DT meeting earlier this week, Grant Likely said he has the
> request in to create a separate mailinglist for collaboration between
> the different devicetree users (BSD, Linux, etc).
> 
> > So my current idea to continue with barebox devicetrees is:
> > 
> > - Maintain a kernel branch which has all devicetree changes we need in
> >   barebox in a clean step-by-step series
> > - rebase this branch regularly on the newer kernel
> > - Copy the resulting devicetrees to barebox
> > 
> > The upside is that we have up to date devicetrees in barebox without
> > having to resync them by hand on a per SoC basis.  Of course this also
> > means that we lose the devicetree history and breakage may be introduced
> > with some huge commits saying "Update devicetrees to Linux-3.x".
> > 
> > Any better ideas? I think we have to do something.
> 
> I think the proper solution will percolate out of the first
> cross-project discussions on the new ML.
> 
> imho, the goal is to not have any project tied to a specific version of
> the devicetree.  iow, we don't break backwards compatibility in the
> devicetrees, and projects should revert to default behavior if new dt
> parameters are missing.  This means Linux and BSD shouldn't need to keep
> a current copy of the devicetree in their trees.  However, building the
> bootloader is a different animal.  It needs to provide the dt blob...
> 
> Definitely fodder for the new ML.
> 
> Grant, can you please add Sascha to the list of folks to notify when the
> new ML is ready?

Yes we do need to split the DT ASAP

Best Regards,
J.
> 
> thx,
> 
> Jason.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
