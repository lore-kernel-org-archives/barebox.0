Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mho-02-ewr.mailhop.org ([204.13.248.72])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFU5Q-0001un-Rb
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 19:42:41 +0000
Date: Mon, 17 Feb 2014 14:42:15 -0500
From: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20140217194215.GY7862@titan.lakedaemon.net>
References: <20140207071332.GE16215@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140207071332.GE16215@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 07, 2014 at 08:13:32AM +0100, Sascha Hauer wrote:
> Hi All,
> 
> It's becoming more obvious that devicetree maintenance is painful
> because we have to sync them to the kernel regularly. My hope was that
> this would get simpler once the devicetrees get their own repository
> outside the kernel, but it seems that won't happen anytime soon.

As one of my todo items from last week's devicetree irc meeting, I've
now proposed just that:

  http://article.gmane.org/gmane.comp.devicetree.compiler/14

Also, cross-posted to devicetree and devicetree-spec.

thx,

Jason.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
