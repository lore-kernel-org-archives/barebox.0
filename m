Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbg507.qq.com ([203.205.250.51] helo=smtpbg.qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKTxL-0004wp-0n
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 21:02:13 +0000
Date: Wed, 16 Oct 2019 04:57:45 +0800
From: duhuanpeng <sendpatch@qq.com>
Message-ID: <20191015205744.GA30054@router.tkernel.org>+8A09C73BF723B13D
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: readling, ctrl-u is not working like linux console
To: barebox@lists.infradead.org
Cc: r.karszniewicz@phytec.de

Hi,

I find it the barebox console's ctrl-u is not working like my
linux host.
for now, the barebox's ctrl-u discard the whole line. but the
linux consle just remove characters before cursor.
is the barebox ctrl-u follows any standard, if not, how about
make it just works like linux(ah, it is gnu readline) does.

Regards,
duhuanpeng

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
