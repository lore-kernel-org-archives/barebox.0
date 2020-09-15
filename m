Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIB8O-0004yZ-2d
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 13:36:37 +0000
From: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
Date: Tue, 15 Sep 2020 15:36:29 +0200
Message-Id: <20200915133630.32511-1-a.schwarzkopf@phytec.de>
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
Subject: [PATCH 0/1] bootm: Allow loading OP-TEE from FIT image
To: barebox@lists.infradead.org

This allows loading OP-TEE binaries from FIT images. The main benefit
from this approach comes from the fact that FIT images can be signed
and therefore it can be ensured that the TEE binary is not malicious.

A shortened .its file to make use of this patch might look like this: 

images {
...
tee@1 {
	description = "OP-TEE trusted OS";
	data = /incbin/("...");
	type = "tee";
	arch = "arm";
	compression = "none";
	hash@1 {
		algo = "sha256";
	};
	};
};

configurations {
default = "config-1";
config-1 {
	description = "...";
	kernel = "kernel@1";
	fdt = "fdt@1;
	tee = "tee@1";

	signature-1 {
				algo = "sha256,rsa4096";
				key-name-hint = "FIT-4096";
				sign-images = "kernel", "fdt", "tee";
			};
}

Best regards,
Albert

Albert Schwarzkopf (1):
  bootm: Allow loading OP-TEE from FIT image

 arch/arm/lib32/bootm.c | 44 +++++++++++++++++++++++++++++++++++++-----
 1 file changed, 39 insertions(+), 5 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
