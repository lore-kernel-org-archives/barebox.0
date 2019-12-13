Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifkkU-0008UL-Fd
 for barebox@lists.infradead.org; Fri, 13 Dec 2019 13:12:52 +0000
Date: Fri, 13 Dec 2019 14:12:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191213131242.nznq2yhasvfmp7s6@pengutronix.de>
References: <CAFfN3gV-kAhDE6=EBJetWT0+T8hgq5tUXAn0qzwK2Q7c8-wsUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFfN3gV-kAhDE6=EBJetWT0+T8hgq5tUXAn0qzwK2Q7c8-wsUQ@mail.gmail.com>
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
Subject: Re: [BUG] imx6qdl: degraded eMMC write performance
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Dec 10, 2019 at 03:44:52PM +0100, Hubert Feurstein wrote:
> Hi,
> 
> I've updated barebox for our custom platform from v2015.06.0 to
> v2019.12.0. With the new version I have noticed a much worse write
> performance onto the onboard eMMC.
> 
> With v2015.06.0 the indicated progress of the copy command is very
> smooth. Calling "cp -v /dev/zero /dev/mmc3.root" takes about 80
> seconds for 256MB. But with v2019.12.0 the progress is very bumpy and
> the copy takes about 280 seconds.
> 
> I've tracked this down to this commit which destroys the performance:
> "block: Adjust cache sizes" (b6fef20c1215c6ef0004f6af4a9c4b77af51dc43)

We could just revert this patch. I can't find any workload that gets
faster with b6fef20c1215. It's rather the other way round.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
