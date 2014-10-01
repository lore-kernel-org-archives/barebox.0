Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XZD3M-0001rr-0T
 for barebox@lists.infradead.org; Wed, 01 Oct 2014 06:06:20 +0000
Date: Wed, 1 Oct 2014 08:02:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141001060247.GZ4992@pengutronix.de>
References: <CACSabZ_nSs8L6yHn6Pz3quNvYQSDWiB0FWOYow1vyp9akRp0PA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACSabZ_nSs8L6yHn6Pz3quNvYQSDWiB0FWOYow1vyp9akRp0PA@mail.gmail.com>
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
Subject: Re: Little bug
To: luigi origa <luigi.origa@gmail.com>
Cc: barebox@lists.infradead.org

Hi Luigi,

On Tue, Sep 30, 2014 at 10:03:39PM +0200, luigi origa wrote:
> I found a little bug in your code.
> 
> The structure "fb_videomode" contains a field "display_flags" but
> selecting "video svga" or "video a70"  the code initialize the struct
> using the field ".flag". Obviously the compiler in this case, exit
> with an error.

Could you tell us which files exactly have this bug? barebox neither has
a a70 nor a svga driver.

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
