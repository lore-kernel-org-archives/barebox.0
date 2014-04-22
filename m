Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f41.google.com ([209.85.215.41])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WcZuz-0001f5-BD
 for barebox@lists.infradead.org; Tue, 22 Apr 2014 12:35:22 +0000
Received: by mail-la0-f41.google.com with SMTP id gl10so4357931lab.0
 for <barebox@lists.infradead.org>; Tue, 22 Apr 2014 05:34:54 -0700 (PDT)
Received: from gmail.com ([213.132.98.41])
 by mx.google.com with ESMTPSA id el7sm40022745lac.10.2014.04.22.05.34.50
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
 Tue, 22 Apr 2014 05:34:51 -0700 (PDT)
Date: Tue, 22 Apr 2014 14:34:43 +0200
From: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20140422123443.GA16192@gmail.com>
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
Subject: Freescale P1020 Startup
To: barebox@lists.infradead.org

Hi, I'm currently trying to bring up a P1020 based board which boots
from a NOR flash. My board config is based on the existing P2020RDB
board.

The code faults very early with an instruction TLB error when
transitioning from the boot page (0xfffff000) to the flash's address
space (0xeffff000). The TLB has the same valid entries that U-Boot has
setup at the corresponding point in the code (at the end of
create_init_ram_area).

I have tried to compare start.S with its U-Boot cousin but alas, my
PPC assembler fu fails me. Are there any differences between the E500
cores in the P1020 vs. P2020 that must be taken in to consideration in
start.S?

-- 
Thanks
 - wkz

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
