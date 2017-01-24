Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cVwVU-0007AU-A2
 for barebox@lists.infradead.org; Tue, 24 Jan 2017 08:31:14 +0000
Date: Tue, 24 Jan 2017 09:30:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170124083050.iry4xktcb5mapcqs@pengutronix.de>
References: <CAGm1_ksywG4OggUEhxr7vFV4TU0um4WfJ8TtXFWH2qEphhtdgA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_ksywG4OggUEhxr7vFV4TU0um4WfJ8TtXFWH2qEphhtdgA@mail.gmail.com>
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
Subject: Re: tftp get and last ack hanlding
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Jan 23, 2017 at 10:01:04AM +0100, Yegor Yefremov wrote:
> I'm using dnsmaq as tftp server. When I execute tftp file on barebox
> 2016.07.0 I get the required file, but dnsmasq complains about missing
> ACK (my interpretation of dnsmaq source code). If I'm performing the
> same operation in Linux using busybox ftfp - everything is OK, i.e.
> instead of "failed sending" I get "sent". Is this a desired barebox
> tftp behavior?

To answer this question: No, it's not a desired behaviour. It may be
because of your network driver, but I also wouldn't wonder if the tftp
code triggers this.

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
