Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from idris.smile.fr ([91.216.209.19])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eMYrr-0001eG-0W
 for barebox@lists.infradead.org; Wed, 06 Dec 2017 12:32:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by idris.smile.fr (Postfix) with ESMTP id 748911EE2455
 for <barebox@lists.infradead.org>; Wed,  6 Dec 2017 13:31:41 +0100 (CET)
Received: from idris.smile.fr ([127.0.0.1])
 by localhost (bluemind-mta.prod.vitry.intranet [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id StM4nXZeBKeL for <barebox@lists.infradead.org>;
 Wed,  6 Dec 2017 13:31:41 +0100 (CET)
Received: from [10.5.75.30] (glo44-1-82-67-130-147.fbx.proxad.net
 [82.67.130.147])
 by idris.smile.fr (Postfix) with ESMTPSA id E9B171EE244B
 for <barebox@lists.infradead.org>; Wed,  6 Dec 2017 13:31:40 +0100 (CET)
From: David GARRIOU <david.garriou@smile.fr>
Message-ID: <1b31cc71-eae5-8124-1144-318902661e85@smile.fr>
Date: Wed, 6 Dec 2017 13:31:39 +0100
MIME-Version: 1.0
Content-Language: en-US
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
Subject: bootchooser and state (again)
To: barebox@lists.infradead.org

Hi All,

I am currently using barebox 2016.11 with a board from Phytec.

I have problems with state framework and bootchooser.

I have seen some threads dealing with this subject but with latest 
versions of barebox.

My first question deals with my version of barebox (2016.11), does it 
support well bootchooser and state framework ?

Indeed it seems to me that there is a big gap between 2016.11 and latest 
version.

Thanks a lot,

David



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
