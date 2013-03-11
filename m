Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f314.mail.ru ([128.140.169.178])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF5Iy-00005i-Gi
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 16:10:29 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 11 Mar 2013 20:10:22 +0400
Message-ID: <1363018222.201808769@f314.mail.ru>
In-Reply-To: <20130310232442.GX1906@pengutronix.de>
References: <1362594605-1083-1-git-send-email-shc_work@mail.ru>
 <1362927660.933817593@f386.i.mail.ru> <20130310232442.GX1906@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtSRkNdIE1ha2VmaWxlOiBDcmVhdGUgZW1wdHkgPGNvbmZpZy5o?=
 =?UTF-8?B?PiBpZiB0aGlzIGhlYWRlciBmaWxlIGlzIG5vdCBuZWVkZWQgYnkgYm9hcmQ=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Sun, Mar 10, 2013 at 07:01:00PM +0400, Alexander Shiyan wrote:
> > > > > Patch creates empty <config.h> if this header is not needed by board.
> > > > > This will allow to remove many empty config.h files from boards.
> > > 
> > > How does git incorporate with this? I think git just ignores empty files
> > > like these, right?
> > 
> > When I say "empty" here, I mean about not zeroed files, but about
> > files without any content. Now we have 50 config.h files like this.
> 
> My question aimed in the direction whether we end up with empty files
> in git because people accidently add these now generated files.
> 
> I think the goal should be to get rid of the config.h files entirely.
> This patch (or better: the removal of the empty files) could be a good
> start to see what's left.

OK, let's see. I will send the patch again. Second part is a cleanup.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
