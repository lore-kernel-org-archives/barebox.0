Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fM6Aq-0004kA-7c
 for barebox@lists.infradead.org; Fri, 25 May 2018 06:26:02 +0000
Date: Fri, 25 May 2018 08:25:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180525062545.6n7yqry3lln35rsg@pengutronix.de>
References: <CAGKTrWLu-r7OOFRW-JsbOz64O0jOz0CvJjVvHWzr-UFtVkcntg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGKTrWLu-r7OOFRW-JsbOz64O0jOz0CvJjVvHWzr-UFtVkcntg@mail.gmail.com>
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
Subject: Re: [BUG] TFTP: No access to subdirectories
To: Franz Forstmayr <f.forstmayr@gmail.com>
Cc: barebox@lists.infradead.org

Hi Franz,

On Thu, May 24, 2018 at 09:26:18AM +0200, Franz Forstmayr wrote:
> Hi,
> 
> I just saw this old thread and wanted to ask, if this one has been
> fixed already? I just ran into a similar/same problem using
> barebox-2018-04 from the  phytec repository
> (https://git.phytec.de/barebox/log/?h=v2018.04.0-phy).
> 
> When i want to boot net the first time, it fails the second time successes.

I have no idea. Normally it should work, though I would have to test on
that version. can you reproduce it with the 'cp' command rather than
doing a net boot? Also, which tftp server have you running?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
