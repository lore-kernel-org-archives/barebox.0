Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from secure10.t-systems.com ([217.150.155.12])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YxBVq-00080M-IU
 for barebox@lists.infradead.org; Tue, 26 May 2015 09:51:07 +0000
Received: from p50989a7d.dip0.t-ipconnect.de ([80.152.154.125]
 helo=MAIL-10-4.ATS-Intranet.local)
 by secure10.t-systems.com with smtp (envelope-from
 <Alexander.Richter@ATSonline.de>) id 1YxBVR-0008BI-2D
 for barebox@lists.infradead.org; Tue, 26 May 2015 11:50:41 +0200
Received: from [10.2.1.246] (helo=mail-10-4.ATS-Intranet.local)
 by MAIL-10-4.ATS-Intranet.local with G Data MailSecurity;
 for <barebox@lists.infradead.org>; Tue, 26 May 2015 11:50:40 +0200
Message-ID: <556441EF.8040702@atsonline.de>
Date: Tue, 26 May 2015 11:50:39 +0200
From: Alexander Richter <alexander.richter@atsonline.de>
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
Subject: bareboxenv - tricky ptxdist behavior
To: barebox@lists.infradead.org

Hallo,

I just used bareboxenv tool in linux userspace after a long troublesome 
trip through ptxdist.
That would not have to be, if the description of "build bareboxenv tool 
for target" in barebox config has said, that i has to enable the tool  
platformconfig.

Perhaps you want to change this behavior or indicate it in the description.

-- 
Alexander Richter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
