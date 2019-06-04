Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0.a-ix.net ([2a03:4000:21:445::fe61:e52a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5I2-0007gF-7x
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 08:59:32 +0000
Received: from web.lxd ([172.22.0.93] helo=mail.a-ix.net)
 by mx0.a-ix.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <ml+barebox@moritz.augsburger.name>)
 id 1hY5Hv-0004fR-A1
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 08:59:25 +0000
MIME-Version: 1.0
Date: Tue, 04 Jun 2019 10:59:23 +0200
From: Moritz Augsburger <ml+barebox@moritz.augsburger.name>
In-Reply-To: <CAPYMOwmwmX3G0cHp6DSmw+GxRmENThtABnQdSS-2cL=kgfYYPg@mail.gmail.com>
References: <CAPYMOwmwmX3G0cHp6DSmw+GxRmENThtABnQdSS-2cL=kgfYYPg@mail.gmail.com>
Message-ID: <e7c88d1ca9dd8acc056490158be54e39@moritz.augsburger.name>
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
Subject: Re: Raspberry Pi Barebox State Integration - SD card
To: barebox@lists.infradead.org

Hi,

Am 2019-06-04 08:32, schrieb Valentina Rusu:
> The issue to integrate Barebox state are the following:
> * we need to specify a backend for the "state" node;
> * the backend should point to an of partition on a non-volatile memory;
> * other boards have EEPROM, NAND besides SD card and they are
> described in the device tree; RPi has no such thing;
> * somehow I need to write the state on the SD card in a location where
> does not interfere with the partitions created (boot, rootfs, user
> partitions, etc);
> * the SD card device (mci0) is automatically detected at startup, and
> not described in the device tree;

Below is a part of my patches, using the emmc on a Compute Module as 
state backend.
It uses the region between MBR and first partition (starting @4MB) to 
save the state.

The patch may contain changes already done to the latest version, so 
apply carefully.

diff --git a/arch/arm/dts/bcm2837-rpi-3.dts 
b/arch/arm/dts/bcm2837-rpi-3.dts
index 51883613c..420525b9e 100644
--- a/arch/arm/dts/bcm2837-rpi-3.dts
+++ b/arch/arm/dts/bcm2837-rpi-3.dts
@@ -11,10 +11,5 @@
  };

  &sdhci {
-	pinctrl-0 = <&emmc_gpio48>;
-	/delete-node/ wifi@1;
-};
-
-&sdhost {
  	status = "disabled";
  };
diff --git a/arch/arm/dts/bcm2837-rpi-cm3.dts 
b/arch/arm/dts/bcm2837-rpi-cm3.dts
index cfbffe175..d0144dcbc 100644
--- a/arch/arm/dts/bcm2837-rpi-cm3.dts
+++ b/arch/arm/dts/bcm2837-rpi-cm3.dts
@@ -8,11 +8,76 @@
  	memory {
  		reg = <0x0 0x0>;
  	};
+
+    state: state {
+        magic = <0x4d433230>;
+        compatible = "barebox,state";
+        backend-type = "raw";
+        backend = <&backend_state_sdhost>;
+        backend-storage-type = "circular";
+        backend-stridesize = <0x800>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        bootstate {
+            #address-cells = <1>;
+            #size-cells = <1>;
+            system0 {
+                #address-cells = <1>;
+                #size-cells = <1>;
+                remaining_attempts {
+                    reg = <0x0 0x4>;
+                    type = "uint32";
+                    default = <3>;
+                };
+                priority {
+                    reg = <0x4 0x4>;
+                    type = "uint32";
+                    default = <21>;
+                };
+            };
+
+            system1 {
+                #address-cells = <1>;
+                #size-cells = <1>;
+                remaining_attempts {
+                    reg = <0x10 0x4>;
+                    type = "uint32";
+                    default = <3>;
+                };
+                priority {
+                    reg = <0x14 0x4>;
+                    type = "uint32";
+                    default = <20>;
+                };
+            };
+            last_chosen {
+                reg = <0x2C 0x4>;
+                type = "uint32";
+            };
+        };
+    };
+
+    aliases {
+        state = &state;
+    };
+
  };

-&sdhci {
-	pinctrl-0 = <&emmc_gpio48>;
-	no-sd;
-	non-removable;
+&sdhost {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhost_gpio48>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_3v3>;
+	vqmmc-supply = <&reg_1v8>;
  	status = "okay";
+	partitions {
+		compatible = "fixed-partitions";
+		#size-cells = <1>;
+		#address-cells = <1>;
+        backend_state_sdhost: part@200000 {
+                label = "state_sdhost";
+                reg = <0x200000 0x200000>;
+        };
+	};
  };

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
