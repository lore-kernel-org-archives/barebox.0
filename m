Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0a-00176a03.pphosted.com ([67.231.149.52])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wf5Qt-0008LU-TR
 for barebox@lists.infradead.org; Tue, 29 Apr 2014 10:38:40 +0000
Received: from pps.filterd (m0047963.ppops.net [127.0.0.1])
 by m0047963.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id s3TATKDQ038357
 for <barebox@lists.infradead.org>; Tue, 29 Apr 2014 06:38:18 -0400
Received: from cinmlip14.e2k.ad.ge.com ([12.71.149.1])
 by m0047963.ppops.net-00176a03. with ESMTP id 1kjace00ek-1
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Tue, 29 Apr 2014 06:38:17 -0400
Received: from [3.26.68.149] (unknown [3.26.68.149])
 by selma.edi.geip.ge.com (Postfix) with ESMTP id 69173E09A1
 for <barebox@lists.infradead.org>; Tue, 29 Apr 2014 11:38:15 +0100 (BST)
Message-ID: <535F8117.4090207@ge.com>
Date: Tue, 29 Apr 2014 11:38:15 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <20140422123443.GA16192@gmail.com>
In-Reply-To: <20140422123443.GA16192@gmail.com>
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
Subject: Re: Freescale P1020 Startup
To: barebox@lists.infradead.org

Hello Tobias,
I was away for a week, hence the late answer.

Have you made any progress since you sent this email?

As far as I know, this early in the code there is no difference.

If you have more information on your debug step, I may be able to find
something.

What tool do you use?

cheers,
REnaud


On 22/04/2014 13:34, Tobias Waldekranz wrote:
> Hi, I'm currently trying to bring up a P1020 based board which boots
> from a NOR flash. My board config is based on the existing P2020RDB
> board.
> 
> The code faults very early with an instruction TLB error when
> transitioning from the boot page (0xfffff000) to the flash's address
> space (0xeffff000). The TLB has the same valid entries that U-Boot has
> setup at the corresponding point in the code (at the end of
> create_init_ram_area).
> 
> I have tried to compare start.S with its U-Boot cousin but alas, my
> PPC assembler fu fails me. Are there any differences between the E500
> cores in the P1020 vs. P2020 that must be taken in to consideration in
> start.S?
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
