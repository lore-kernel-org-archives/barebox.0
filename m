Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1budJo-00028Z-Bx
 for barebox@lists.infradead.org; Thu, 13 Oct 2016 10:32:57 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id 7DD7527A6A8
 for <barebox@lists.infradead.org>; Thu, 13 Oct 2016 12:32:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by imapserver.systec-electronic.com (Postfix) with ESMTP id 6A005DA0A52
 for <barebox@lists.infradead.org>; Thu, 13 Oct 2016 12:32:33 +0200 (CEST)
Received: from imapserver.systec-electronic.com ([127.0.0.1])
 by localhost (imapserver.systec-electronic.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id qpRi9pQje__K for <barebox@lists.infradead.org>;
 Thu, 13 Oct 2016 12:32:31 +0200 (CEST)
Received: from [192.168.10.177] (ws-krueger.systec.local [192.168.10.177])
 by imapserver.systec-electronic.com (Postfix) with ESMTP id 7E6B0DA0A46
 for <barebox@lists.infradead.org>; Thu, 13 Oct 2016 12:32:31 +0200 (CEST)
From: =?UTF-8?Q?Daniel_Kr=c3=bcger?= <daniel.krueger@systec-electronic.com>
Message-ID: <03214122-b05b-fc45-1e32-ad2832ca36d3@systec-electronic.com>
Date: Thu, 13 Oct 2016 12:32:31 +0200
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
Subject: Compressed DTB - builtin DTB
To: barebox@lists.infradead.org

Hello,

I'm currently porting our board support to device tree. Currently, I 
don't use multi-PBL, but include the device tree via CONFIG_BUILTIN_DTB. 
This works, but the DTB seems to be included twice in the image: once as 
plain DTB and once as compressed DTB. I think this isn't intended this way.

Extract from System.map:
87e82b80 R __dtb_imx35_systec_hmi_start
87e82b80 R __dtb_start
87e8501c R __dtb_imx35_systec_hmi_end
87e85020 R __dtb_z_imx35_systec_hmi_start
87e85ad0 R __dtb_z_imx35_systec_hmi_end
87e85b00 B __bss_start
87e85b00 R __dtb_end

Just using the compressed DTB would be really good. Because it makes the 
image much smaller. However, how should that be done? The extract code 
might be simple. But I don't have an idea how to let the linker select 
the right version.

Thanks for any kind of support,
   Daniel

-- 

SYS TEC electronic GmbH
Am Windrad 2
08468 Heinsdorfergrund

Telefon : +49 (0) 3765 38600-0
Fax     : +49 (0) 3765 38600-4100
Email   : daniel.krueger@systec-electronic.com
Website : http://www.systec-electronic.com

Managing Directors  :
   Dipl.-Phys. Siegmar Schmidt, Dipl. Ing. (FH) Armin von Collrepp
Commercial registry : Amtsgericht Chemnitz, HRB 28082
USt.-Id Nr.         : DE150534010


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
