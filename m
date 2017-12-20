Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22d.google.com ([2a00:1450:4010:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eRbvL-00077c-91
 for barebox@lists.infradead.org; Wed, 20 Dec 2017 10:48:32 +0000
Received: by mail-lf0-x22d.google.com with SMTP id y78so17819328lfd.1
 for <barebox@lists.infradead.org>; Wed, 20 Dec 2017 02:48:19 -0800 (PST)
Received: from localhost.localdomain (t109.niisi.ras.ru. [193.232.173.109])
 by smtp.gmail.com with ESMTPSA id j63sm3760707lfg.95.2017.12.20.02.48.16
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 20 Dec 2017 02:48:17 -0800 (PST)
Date: Wed, 20 Dec 2017 13:48:14 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20171220104814.4snxmloobeywnuwb@localhost.localdomain>
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
Subject: command: hashsum: md5sum reports wrong sum for the file named 4k.bin
To: barebox@lists.infradead.org

Hi,

The md5sum command reports wrong sum for a file named 4k.bin and, I guess, for 
other files named alike. Here are the commands to reproduce the bug:

	barebox@barebox sandbox:/ memcpy -s /dev/zero -d _4k.bin 0 0 4k
	barebox@barebox sandbox:/ md5sum _4k.bin
	620f0b67a91f7f74151bc5be745b7110  _4k.bin
	
	barebox@barebox sandbox:/ cp _4k.bin 4k.bin
	barebox@barebox sandbox:/ md5sum 4k.bin
	d41d8cd98f00b204e9800998ecf8427e  4k.bin
	
	barebox@barebox sandbox:/ cp 4k.bin __4k.bin
	barebox@barebox sandbox:/ md5sum __4k.bin 
	620f0b67a91f7f74151bc5be745b7110  __4k.bin
	
	barebox@barebox sandbox:/ version
	
	barebox 2017.12.0 #4 Wed Dec 20 12:26:57 MSK 2017
	
	barebox@barebox sandbox:/ Terminated
	
	$ dd if=/dev/zero bs=4k count=1 | md5sum
	...
	620f0b67a91f7f74151bc5be745b7110  -

Regards,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
