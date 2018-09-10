Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fzLZ2-0001H9-9Z
 for barebox@lists.infradead.org; Mon, 10 Sep 2018 12:45:14 +0000
Date: Mon, 10 Sep 2018 14:45:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180910124500.t6bu6vjxdkukemxq@pengutronix.de>
References: <F272D9410BD38E429D604B94748C61547AB0D488@WIEMS02101.ceu.corp.heidelberg.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <F272D9410BD38E429D604B94748C61547AB0D488@WIEMS02101.ceu.corp.heidelberg.com>
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
Subject: Re: unable to upload new file to tftp server
To: "Toews, Dietrich" <Dietrich.Toews@heidelberg.com>, g@pengutronix.de
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Dietrich,

On Mon, Sep 10, 2018 at 10:08:52AM +0000, Toews, Dietrich wrote:
> Hi,
> 
> when I try to upload a new file from barebox to an tftp server I always get the error: "Function not implemented".
> 
> When the file is existing on the server, there is no problem.
> 
> Prerequisites:
> - mounted directory to an tftp-server
> - test: cp local.file /mnt/tftp-dir/remote.file
> 
> Progress:
> - first step of cp is to get the "stat" of the file - the answer of the tftp-server is ENOENT.
> - then cp tries to open the file, but it does only add O_TRUNC when the file exists
> - tftp_do_open returns ENOSYS when O_TRUNC is not set
> 
> So you can't upload a non-existing file, but in most cases one needs exactly that.

Could you retry with current master? There have been some changes
recently.

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
