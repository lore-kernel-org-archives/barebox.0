Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22f.google.com ([2a00:1450:400c:c09::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aXsSa-0003H3-Id
 for barebox@lists.infradead.org; Mon, 22 Feb 2016 15:31:41 +0000
Received: by mail-wm0-x22f.google.com with SMTP id g62so178637581wme.1
 for <barebox@lists.infradead.org>; Mon, 22 Feb 2016 07:31:19 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 22 Feb 2016 16:31:18 +0100
Message-ID: <CABQt-UmmZmRR9zPscx=8-eQ49eNUS7GQVxjBXs6D0OgiuWfquQ@mail.gmail.com>
From: Philippe Leduc <ledphilippe@gmail.com>
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
Subject: bootm crash - bad uimage?
To: barebox@lists.infradead.org

Hello,

Since the commit 0a37e22d638acf1b2c7c6e6ab83b6a3272b0a11c, I can't
boot my image anymore.
It seems that os_part is a null pointer and simple_strtoul crash on it
(in bootm_load_os). I workaround the problem by forcing the value to 0
if os_part if null, but I guess that it is a bad solution.
Is this a due to a bad usage of the mkimage utility?

best regards,

--
Philippe LEDUC
ledphilippe@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
