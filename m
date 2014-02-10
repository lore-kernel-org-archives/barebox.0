Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from benson.vm.bytemark.co.uk ([212.110.190.137])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCpCR-0000V9-La
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 11:38:56 +0000
Message-ID: <1392032312.5117.49.camel@kazak.uk.xensource.com>
From: Ian Campbell <ijc@hellion.org.uk>
Date: Mon, 10 Feb 2014 11:38:32 +0000
In-Reply-To: <20140207141028.GT8533@titan.lakedaemon.net>
References: <20140207071332.GE16215@pengutronix.de>
 <20140207141028.GT8533@titan.lakedaemon.net>
Mime-Version: 1.0
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
Cc: Grant Likely <grant.likely@secretlab.ca>, barebox@lists.infradead.org, devicetree@vger.kernel.org

On Fri, 2014-02-07 at 09:10 -0500, Jason Cooper wrote:
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

This is automatically extracted out of the linux git tree (using
git-filter-branch), maintaining all the history etc. I intend to keep
this running until such a time as the DTS files are migrated out of
Linux.

For the time being though patches to this tree need to go through the
Linux tree in the normal way.

(also, as the name states it is potentially rebasing, although there
hasn't been an actual need since the early days when I was still getting
things working)

Ian.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
