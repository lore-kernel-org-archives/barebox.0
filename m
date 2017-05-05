Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22b.google.com ([2a00:1450:4010:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6bVm-0005R2-Ai
 for barebox@lists.infradead.org; Fri, 05 May 2017 11:35:08 +0000
Received: by mail-lf0-x22b.google.com with SMTP id r17so1904371lfg.0
 for <barebox@lists.infradead.org>; Fri, 05 May 2017 04:34:41 -0700 (PDT)
Received: from localhost.localdomain (t109.niisi.ras.ru. [193.232.173.109])
 by smtp.gmail.com with ESMTPSA id h14sm981892ljb.46.2017.05.05.04.34.37
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 May 2017 04:34:38 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  5 May 2017 14:34:30 +0300
Message-Id: <20170505113435.19928-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/5] MIPS: start*.S and barebox.lds.S fixups
To: barebox@lists.infradead.org

Antony Pavlov (5):
  MIPS: start*.S: drop redundant .text
  MIPS: barebox.lds.S: drop unneeded '_start = .'
  MIPS: barebox.lds.S: remove unused got
  MIPS: barebox.lds.S: put .text_entry contents after _stext and _text
  MIPS: start.S: put entry code into the ".text_entry" section

 arch/mips/boot/start-pbl.S  | 1 -
 arch/mips/boot/start.S      | 3 +--
 arch/mips/lib/barebox.lds.S | 6 +-----
 3 files changed, 2 insertions(+), 8 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
