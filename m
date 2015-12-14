Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8Y7D-00034E-99
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 18:44:56 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Mon, 14 Dec 2015 18:44:28 +0000
Message-ID: <1450118675.26955.142.camel@rtred1test09.kymeta.local>
References: <1449830435-6964-1-git-send-email-s.hauer@pengutronix.de>
 <1449830435-6964-2-git-send-email-s.hauer@pengutronix.de>
 <1449862171.26955.115.camel@rtred1test09.kymeta.local>
 <20151214092525.GE11966@pengutronix.de>
In-Reply-To: <20151214092525.GE11966@pengutronix.de>
Content-Language: en-US
Content-ID: <41BE25F510DFAE4AA3002709052844E8@kymetacorp.com>
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
Subject: Re: [PATCH 2/2] partition: Create links with partition names
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, 2015-12-14 at 10:25 +0100, Sascha Hauer wrote:
> On Fri, Dec 11, 2015 at 07:29:25PM +0000, Trent Piepho wrote:
> > On Fri, 2015-12-11 at 11:40 +0100, Sascha Hauer wrote:
> > > When a partition has a name create a link to the original partition
> > > rather than registering a second cdev.
> > 
> > What does devinfo look like now?  Do named partition still show up?
> 
> No, they won't. Is that necessary? At least an ls -l in /dev/ now shows
> that the different devices are really the same.

It's a very nice feature to be able to see the partitions in devinfo.
Especially for the named partitions, since you can't tell what order
they are from the names.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
