Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vm01-scratchy.webonline.biz ([41.86.105.82])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WhbmF-0006XE-L8
 for barebox@lists.infradead.org; Tue, 06 May 2014 09:35:08 +0000
Date: Tue, 06 May 2014 11:34:34 +0200
From: Ivor Kruger <ivor@veriline.co.za>
Message-ID: <CF8E7908.F1EB%ivor@veriline.co.za>
References: <CF8E74A2.F1E9%ivor@veriline.co.za>
In-Reply-To: <CF8E74A2.F1E9%ivor@veriline.co.za>
Mime-version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Timeout on downloading images
To: barebox@lists.infradead.org

Hi, I often get timeouts when downloading images to flash via the update
command. See below. Is there a way to change the timeout/retry options?

Its so bad, that I keep the rootfs way small and then manually tftp the
additional large files=8A

barebox@Phytec phyCORE pcm049:/ update -t rootfs -d nand -f root.ubi
host 192.168.60.2 is alive

erasing partition /dev/nand0.root.bb

Skipping bad block at 0x1bee0000

flashing root.ubi to /dev/nand0.root.bb

        [######################################T T T T read: Connection
timed out

barebox@Phytec phyCORE pcm049:/




Regards
Ivor Kruger



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
