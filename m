Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from wiems06002.ceu.heidelberg.com ([193.99.214.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fzJ83-0005z4-S5
 for barebox@lists.infradead.org; Mon, 10 Sep 2018 10:09:18 +0000
From: "Toews, Dietrich" <Dietrich.Toews@heidelberg.com>
Date: Mon, 10 Sep 2018 10:08:52 +0000
Message-ID: <F272D9410BD38E429D604B94748C61547AB0D488@WIEMS02101.ceu.corp.heidelberg.com>
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
Subject: unable to upload new file to tftp server
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

when I try to upload a new file from barebox to an tftp server I always get the error: "Function not implemented".

When the file is existing on the server, there is no problem.

Prerequisites:
- mounted directory to an tftp-server
- test: cp local.file /mnt/tftp-dir/remote.file

Progress:
- first step of cp is to get the "stat" of the file - the answer of the tftp-server is ENOENT.
- then cp tries to open the file, but it does only add O_TRUNC when the file exists
- tftp_do_open returns ENOSYS when O_TRUNC is not set

So you can't upload a non-existing file, but in most cases one needs exactly that.

Dietrich

________________________________

Confidentiality note:
The information in this email and any attachment may contain confidential and proprietary information of Heidelberger Druckmaschinen AG and/or its affiliates and may be privileged or otherwise protected from disclosure. If you are not the intended recipient, you are hereby notified that any review, reliance or distribution by others or forwarding without express permission is strictly prohibited and may cause liability. In case you have received this message due to an error in transmission, we kindly ask you to notify the sender immediately and to delete this email and any attachment from your system.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
