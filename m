Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a7So3-0007zQ-GR
 for barebox@lists.infradead.org; Fri, 11 Dec 2015 18:52:40 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 11 Dec 2015 18:51:26 +0000
Message-ID: <1449859892.26955.98.camel@rtred1test09.kymeta.local>
References: <1445330352-30153-1-git-send-email-mkl@pengutronix.de>
 <1445330352-30153-2-git-send-email-mkl@pengutronix.de>
 <1449787121.26955.89.camel@rtred1test09.kymeta.local>
 <1449792460.26955.91.camel@rtred1test09.kymeta.local>
 <20151211093549.GY11966@pengutronix.de>
In-Reply-To: <20151211093549.GY11966@pengutronix.de>
Content-Language: en-US
Content-ID: <D1C8B091C3F58A42862158B9D055ADF3@kymetacorp.com>
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
Subject: Re: [PATCH] of_path: Fix bug with partitions, simply code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, 2015-12-11 at 10:35 +0100, Sascha Hauer wrote:
> On Fri, Dec 11, 2015 at 12:07:34AM +0000, Trent Piepho wrote:
> > In commit f72b64815619b41e026dd3eb9d53bf9855f84628 using a path that
> > has a partition description broke.
> > 
> > Fix this and simplify the code some.
> 
> Could you please separate the fix from the cleanup?

The fix would be to add an unnecessary extra parameter to
__of_find_path() that just gets deleted in the cleanup.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
