Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-111.126.com ([220.181.15.111])
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cysDO-00054v-6q
 for barebox@lists.infradead.org; Fri, 14 Apr 2017 03:48:09 +0000
From: =?UTF-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <221c9119-96fa-845d-4525-b983d5b3fc03@126.com>
Date: Fri, 14 Apr 2017 11:48:47 +0800
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
Subject: How to change filesystem size of root
To: barebox@lists.infradead.org

When transfer a large file to root through tftp. "Out of memory" error 
like this:

# tftp /xy7520/output_file.rbf a.rbf
T     [###########write: Out of memory                                  ]

My board has 1G ddr but the file jus 23M. So the memory large enough to 
hold the file.

I think it should have a method to adjust the filesystem's size of root. 
But I can't find it.
Help me please.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
