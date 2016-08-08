Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x244.google.com ([2607:f8b0:4002:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bWmCt-0003hE-Sf
 for barebox@lists.infradead.org; Mon, 08 Aug 2016 15:11:12 +0000
Received: by mail-yw0-x244.google.com with SMTP id z8so24858561ywa.0
 for <barebox@lists.infradead.org>; Mon, 08 Aug 2016 08:10:51 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Vicen=C3=A7?= <vicencb@gmail.com>
Date: Mon, 8 Aug 2016 17:10:49 +0200
Message-ID: <CAAMcf8DgyE7AkOJ-JnZuYsMSL84qp2Srbgr=Kv5RkqEOTjqB-Q@mail.gmail.com>
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
Subject: Issue with MMU-less OMAP4
To: barebox@lists.infradead.org

Hello,
I've updated the barebox version running on an archosG9 board since a
long time ago and it broke.
After searching for the problem found the commit causing the issue:
http://git.pengutronix.de/?p=barebox.git;a=commitdiff;h=dba6b4919e5b678b3b78b828b54504913577d337
When booting from USB is desired in an OMAP4 system, the MMU needs to
be disabled because the ROM code that deals with the USB
communications does not get on well with it.

The issue is that it "hangs" when calling:
set_vbar((unsigned int)vectors);
I have no idea on how to fix the issue other than reverting the commit.

Does that happen on other OMAP4 boards when the MMU is disabled?
Does that happen on other OMAPs?
Does that happen on other ARMs?

If a fix if found, I would be glad to test.

Thanks,
  Vicente Bergas.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
