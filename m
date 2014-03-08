Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo69.mail-out.ovh.net ([178.32.228.69])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WMKUK-0004vR-28
 for barebox@lists.infradead.org; Sat, 08 Mar 2014 16:52:41 +0000
Received: from mail425.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id 30E84FFC7AD
 for <barebox@lists.infradead.org>; Sat,  8 Mar 2014 17:52:15 +0100 (CET)
Date: Sat, 8 Mar 2014 17:54:01 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140308165401.GA6478@ns203013.ovh.net>
References: <1393534812-30995-1-git-send-email-s.hauer@pengutronix.de>
 <1393534812-30995-4-git-send-email-s.hauer@pengutronix.de>
 <20140304040345.GP9671@ns203013.ovh.net>
 <20140306162100.GC17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140306162100.GC17250@pengutronix.de>
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
Subject: Re: [PATCH 3/5] net: remove old nfs support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:21 Thu 06 Mar     , Sascha Hauer wrote:
> On Tue, Mar 04, 2014 at 05:03:45AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 22:00 Thu 27 Feb     , Sascha Hauer wrote:
> > > Now that we have the NFS as filesystem support for several releases
> > > remove the old command based NFS support.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > as the bootp is not fully supported on default env2 do not drop it
> 
> Ok for now, but I really want to get rid of it. Would a nfs wrapper
> command be ok?

no as the issue is the symlink as you need to change the mount path

so check it

When I've time I'll take a look for defautlenv2 to fix the bootp support

but untill we have defaultenv v1 I think we need to keep this cmd and tftp

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
