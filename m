Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKbt1-0006ba-Cd
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 05:30:18 +0000
Date: Wed, 16 Oct 2019 13:29:09 +0800
From: duhuanpeng <sendpatch@qq.com>
Message-ID: <20191016052908.GA4915@router.tkernel.org>+0ECCCD5AE344D5CB
References: <1571176460-11235-1-git-send-email-sendpatch@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571176460-11235-1-git-send-email-sendpatch@qq.com>
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
Subject: Re: [PATCH] readline: make ctrl-u to work like linux console
To: barebox@lists.infradead.org
Cc: DU HUANPENG <u74147@gmail.com>

> currtly, the ctrl-u discards the whole line, in most linux
> boxes, ctrl-u just remove character before cursor.
> this patch make ctrl-u to do this.

Hello, sorry for the typo, it should be characters.

Regards,
duhuanpeng



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
