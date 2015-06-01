Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.meteocontrol.de ([62.245.201.114])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YzM7j-0001kX-3B
 for barebox@lists.infradead.org; Mon, 01 Jun 2015 09:35:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.meteocontrol.de (Postfix) with ESMTP id 15B226BDB6
 for <barebox@lists.infradead.org>; Mon,  1 Jun 2015 11:34:32 +0200 (CEST)
Received: from mail.meteocontrol.de ([127.0.0.1])
 by localhost (mailrelay1.meteocontrol.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s2v+G+ggvukU for <barebox@lists.infradead.org>;
 Mon,  1 Jun 2015 11:34:23 +0200 (CEST)
Received: from mail.meteocontrol.de (mcsrv03.meteocontrol.intra [192.168.30.3])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.meteocontrol.de (Postfix) with ESMTPS id 0B7AA6BFE5
 for <barebox@lists.infradead.org>; Mon,  1 Jun 2015 11:34:13 +0200 (CEST)
Message-ID: <556C271F.6040005@meteocontrol.de>
Date: Mon, 1 Jun 2015 11:34:23 +0200
From: Moritz Warning <m.warning@meteocontrol.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Secure barebox
To: barebox@lists.infradead.org

Hi,

I like to secure access to barebox using a password.
passwd seems to be the right command, but setting a
password does not seem to have any effect.

After a reset, access to barebox is not limited as far
as I can tell.

Any ideas?

regards,
mwarning

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
