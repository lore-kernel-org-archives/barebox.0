Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from wiems06002.ceu.heidelberg.com ([193.99.214.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fzMIC-0003DH-HH
 for barebox@lists.infradead.org; Mon, 10 Sep 2018 13:31:54 +0000
From: "Toews, Dietrich" <Dietrich.Toews@heidelberg.com>
Date: Mon, 10 Sep 2018 13:31:32 +0000
Message-ID: <F272D9410BD38E429D604B94748C61547AB0D50C@WIEMS02101.ceu.corp.heidelberg.com>
References: <F272D9410BD38E429D604B94748C61547AB0D488@WIEMS02101.ceu.corp.heidelberg.com>
 <20180910124500.t6bu6vjxdkukemxq@pengutronix.de>
In-Reply-To: <20180910124500.t6bu6vjxdkukemxq@pengutronix.de>
Content-Language: de-DE
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
Subject: RE: unable to upload new file to tftp server
To: Sascha Hauer <s.hauer@pengutronix.de>, "g@pengutronix.de" <g@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi, Sascha,

I did not see the changes in master.
So I made the same patch and it works.

Thank you!

Dietrich

-----Original Message-----
From: Sascha Hauer [mailto:s.hauer@pengutronix.de]
Sent: Monday, September 10, 2018 2:45 PM
To: Toews, Dietrich RD-P6.3.4; g@pengutronix.de
Cc: barebox@lists.infradead.org
Subject: Re: unable to upload new file to tftp server

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

________________________________

Confidentiality note:
The information in this email and any attachment may contain confidential and proprietary information of Heidelberger Druckmaschinen AG and/or its affiliates and may be privileged or otherwise protected from disclosure. If you are not the intended recipient, you are hereby notified that any review, reliance or distribution by others or forwarding without express permission is strictly prohibited and may cause liability. In case you have received this message due to an error in transmission, we kindly ask you to notify the sender immediately and to delete this email and any attachment from your system.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
