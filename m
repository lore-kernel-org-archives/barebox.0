Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZRz3S-00014P-KQ
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 08:49:08 +0000
Received: by lagz9 with SMTP id z9so115195615lag.3
 for <barebox@lists.infradead.org>; Wed, 19 Aug 2015 01:48:43 -0700 (PDT)
Received: from [192.168.1.10] ([185.9.184.41])
 by smtp.googlemail.com with ESMTPSA id bx5sm5661849lbc.36.2015.08.19.01.48.42
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Aug 2015 01:48:42 -0700 (PDT)
Message-ID: <55D442E9.6030306@gmail.com>
Date: Wed, 19 Aug 2015 11:48:41 +0300
From: Igor Plyatov <plyatov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: plyatov@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: delay in the IMXCFG file
To: barebox@lists.infradead.org

Dear all,

for debugging purposes I need to add some delays into the <BOARD 
NAME>.imxcfg file, but does not know which format it is. It looks like 
some kind of C, but it is confusing.

Where is defined "wm 32", "soc", "dcdofs", "loadaddr" command and others?

Which commands I can use in the IMXCFG file to create very early delay, 
before initialization of DRAM?

Please help to clarify these things.

Best wishes.
--
Igor Plyatov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
