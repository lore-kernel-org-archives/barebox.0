Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YiJMg-0005Vd-3f
 for barebox@lists.infradead.org; Wed, 15 Apr 2015 09:12:11 +0000
Message-ID: <1429089107.3365.11.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 15 Apr 2015 11:11:47 +0200
In-Reply-To: <552D6AB3.2070505@gmail.com>
References: <1428627714-17077-5-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428934950-6836-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20150414185207.GG9742@pengutronix.de> <552D6AB3.2070505@gmail.com>
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
Subject: Re: [PATCH v2] USB: xHCI: Sync non-coherent DMA buffers
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Am Dienstag, den 14.04.2015, 21:29 +0200 schrieb Sebastian Hesselbarth:
> On 14.04.2015 20:52, Sascha Hauer wrote:
> > On Mon, Apr 13, 2015 at 04:22:30PM +0200, Sebastian Hesselbarth wrote:
> >> ---
> >> Changelog:
> >> v1->v2:
> >> - balance dma_sync_single_foo() calls (Reported by Lucas Stach)
> >>
> >> Cc: barebox@lists.infradead.org
> >> Cc: Lucas Stach <dev@lynxeye.de>
> >
> > Seems your git send-email ignored this.
> 
> Did it? I checked the original mail's header and it says:
> 
> From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> Cc: barebox@lists.infradead.org, Lucas Stach <dev@lynxeye.de>
> Subject: [PATCH v2] USB: xHCI: Sync non-coherent DMA buffers
> 
> I also checked http://www.spinics.net/lists/u-boot-v2/msg23105.html
> which does not show Lucas on Cc.
> 
> @Lucas, did you receive the original mail or should I worry about
> my git-email setup?
> 
No worries. Your E-Mail setup is just fine. The barebox mailinglist
seems to eat the CC list, which is a bit annoying.

Regards,
Lucas
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
