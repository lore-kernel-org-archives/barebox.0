Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-f178.google.com ([209.85.216.178])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWTAS-0004L3-7o
 for barebox@lists.infradead.org; Wed, 25 Jan 2017 19:23:41 +0000
Received: by mail-qt0-f178.google.com with SMTP id v23so33984103qtb.0
 for <barebox@lists.infradead.org>; Wed, 25 Jan 2017 11:23:16 -0800 (PST)
MIME-Version: 1.0
From: Frank Hunleth <fhunleth@troodon-software.com>
Date: Wed, 25 Jan 2017 14:21:55 -0500
Message-ID: <CA+-urNQJbuE44V93+BERHf9r5kEKzn5mBJ5e=t9932TtR7+0Yw@mail.gmail.com>
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
Subject: Accessing non-volatile variables from Linux
To: barebox@lists.infradead.org

Hi,

I'm wondering if it's possible to read and modify Barebox environment
variables from Linux in a way similar to U-Boot's fw_printenv and
fw_setenv. If that's not possible, is there another way for communicating
between Linux and Barebox? Apologies if I totally missed a section in the
docs that describes this.

Thanks,
Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
