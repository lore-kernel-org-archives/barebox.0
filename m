Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzOql-00043x-TL
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 13:02:09 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id DBFFCA0017A
 for <barebox@lists.infradead.org>; Thu, 19 Nov 2015 14:02:11 +0100 (CET)
From: Jan Remmet <j.remmet@phytec.de>
Date: Thu, 19 Nov 2015 13:58:22 +0100
Message-Id: <1447937904-4637-1-git-send-email-j.remmet@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: bootm multi uimage from nand
To: barebox@lists.infradead.org

I tried to boot a multi uImage from nand containing the kerenl and several
device trees. It was failing because bootm want to open the .bb device multiblei
times to check the filetype.
I separate the changes for review, feel free to squash the patches.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
