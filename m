Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x229.google.com ([2a00:1450:4010:c07::229])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cyyCG-0004U4-9S
 for barebox@lists.infradead.org; Fri, 14 Apr 2017 10:11:21 +0000
Received: by mail-lf0-x229.google.com with SMTP id t144so40564375lff.1
 for <barebox@lists.infradead.org>; Fri, 14 Apr 2017 03:10:59 -0700 (PDT)
Received: from berta (t109.niisi.ras.ru. [193.232.173.109])
 by smtp.gmail.com with ESMTPSA id 187sm275348ljf.32.2017.04.14.03.10.55
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Apr 2017 03:10:55 -0700 (PDT)
Date: Fri, 14 Apr 2017 13:10:51 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20170414101051.GB16849@berta>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: cp: incorrect behaviour when copying recursively
To: barebox@lists.infradead.org

Hi,

The "cp -r <src> <dst>" command omits top directory, when the trailing "/" is 
present in the <src> string. Here is the test case:

	barebox@barebox sandbox:/test mkdir d1
	barebox@barebox sandbox:/test echo -o d1/f1 1
	barebox@barebox sandbox:/test mkdir d2       
	barebox@barebox sandbox:/test cd d2
	barebox@barebox sandbox:/test/d2 cp -r ../d1/ . 
	barebox@barebox sandbox:/test/d2 ls
	.     ..    f1    
	barebox@barebox sandbox:/test/d2 cp -r ../d1 . 
	barebox@barebox sandbox:/test/d2 ls
	.     ..    d1    f1    

	barebox@barebox sandbox:/test/d2 version 
	
	barebox 2017.04.0-00169-g90e7a35e6 #1 Fri Apr 14 12:46:09 MSK 2017

Regards,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
